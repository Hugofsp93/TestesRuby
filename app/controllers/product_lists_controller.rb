class ProductListsController < ApplicationController
  load_and_authorize_resource

  # GET /product_lists
  # GET /product_lists.json
  def index
    @product_lists = @product_lists.order(:id).search(params[:search], params[:page])
  end

  # GET /product_lists/1
  # GET /product_lists/1.json
  def show
  end

  # GET /product_lists/new
  def new
    @product_list.product_names.build
  end

  # GET /product_lists/1/edit
  def edit
  end

  # POST /product_lists
  # POST /product_lists.json
  def create
    @product_list.user = current_user
    respond_to do |format|
      if @product_list.save
        format.html { redirect_to @product_list, notice: "#{t('activerecord.models.product_list.one')} criado com sucesso" }
        format.json { render action: 'show', status: :created, location: @product_list }
      else
        format.html { render action: 'new' }
        format.json { render json: @product_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /product_lists/1
  # PATCH/PUT /product_lists/1.json
  def update
    respond_to do |format|
      if @product_list.update(product_list_params)
        format.html { redirect_to @product_list, notice: "#{t('activerecord.models.product_list.one')} atualizado com sucesso." }
        format.json { render action: 'show', status: :updated, location: @product_list }
      else
        format.html { render action: 'edit' }
        format.json { render json: @product_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /product_lists/1
  # DELETE /product_lists/1.json
  def destroy
    @product_list.destroy
    respond_to do |format|
      format.html { redirect_to product_lists_url }
      format.json { head :no_content }
    end
  end

  private

    # Never trust parameters from the scary internet, only allow the white list through.
    def product_list_params
      params.require(:product_list).permit(:product_name, :quantity, :measure, :list_name, 
                                          product_names_attributes: [:id, :product_name, :quantity, :measure,  :_destroy])
    end
end
