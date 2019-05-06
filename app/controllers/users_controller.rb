class UsersController < ApplicationController
  skip_before_action :authenticate_user!, only: [:new, :create]
  skip_load_resource only: [:create, :update]
  load_and_authorize_resource

  # GET /users
  # GET /users.json
  def index
    @users = @users.order(:email).search(params[:search], params[:page])
  end

  # GET /users/1
  # GET /users/1.json
  def show
  end

  # GET /users/new
  def new
  end

  # GET /users/1/edit
  def edit
  end

  # POST /users
  # POST /users.json
  def create
    @user = User.new(user_params)
    @user.is_active = true
    @user.global_setting = GlobalSetting.create!(single_list: false, user_id: current_user)
    @user.product_lists.build(list_name: "Sua Lista")
 #   @user.product_list_ids << ProductList.instance.id

    status = @user.save

    # Deleting all user roles, and readding based on selection
    if status && params[:user][:role_ids]
      @user.roles.delete_all
      params[:user][:role_ids].each do |r|
        @user.add_role Role.find(r).name if r != ""
      end
    end

    respond_to do |format|
      if status
        format.html { sign_in_and_redirect @user, notice: 'Usuário criado com sucesso' }
        format.json { render action: 'show', status: :created, location: @user }
      else
        format.html { render action: 'new' }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
    
    # @product_list.user = current_user
    # @product_list.save

    # @global_setting.user = current_user
    # @global_setting.save
  end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update

    @user = User.find_by_id(params[:id])

    if (params[:user][:password].blank?)
      params[:user].delete :password
      params[:user].delete :password_confirmation
    end

    if params[:user][:avatar_remove].to_i == 1
      params[:user].delete :avatar
      @user.avatar.purge
    end
    params[:user].delete :avatar if params[:user][:avatar].blank?
    

    params[:user].delete :is_active unless current_user.has_role? :admin
    status = @user.update(user_params)
    if @user.id == current_user.id
      sign_in @user, bypass: true
    end

    if current_user.has_role? :admin
      # Deleting all user roles, and readding based on selection
      if status && params[:user][:role_ids]
        @user.roles.delete_all
        params[:user][:role_ids].each do |r|
          @user.add_role Role.find(r).name if r != ""
        end
      end
    end

    respond_to do |format|
      if status
        format.html { redirect_to @user, notice: 'Usuário atualizado com sucesso.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_url }
      format.json { head :no_content }
    end
  end

  private

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:email, :password, :name, :locale, :is_active, :avatar)
    end
end
