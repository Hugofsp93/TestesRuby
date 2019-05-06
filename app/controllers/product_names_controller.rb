class ProductNamesController < ApplicationController
  load_and_authorize_resource

  # GET /product_names
  # GET /product_names.json
  def index
    @product_names = @product_names.order(:id).search(params[:search], params[:page])
  end

  # GET /product_names/1
  # GET /product_names/1.json
  def show
  end

  # GET /product_names/new
  def new
  end

  # GET /product_names/1/edit
  def edit
  end

  # POST /product_names
  # POST /product_names.json
  def create
    respond_to do |format|
      if @product_name.save
        format.html { redirect_to @product_name, notice: "#{t('activerecord.models.product_name.one')} criado com sucesso" }
        format.json { render action: 'show', status: :created, location: @product_name }
      else
        format.html { render action: 'new' }
        format.json { render json: @product_name.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /product_names/1
  # PATCH/PUT /product_names/1.json
  def update
    respond_to do |format|
      if @product_name.update(product_name_params)
        format.html { redirect_to @product_name, notice: "#{t('activerecord.models.product_name.one')} atualizado com sucesso." }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @product_name.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /product_names/1
  # DELETE /product_names/1.json
  def destroy
    @product_name.destroy
    respond_to do |format|
      format.html { redirect_back(fallback_location: root_path) }
      format.json { head :no_content }
    end
  end

  private

    # Never trust parameters from the scary internet, only allow the white list through.
    def product_name_params
      params.require(:product_name).permit(:product_name, :quantity, :measure, :productlists_id)
    end
end
