class GlobalSettingsController < ApplicationController
  before_action :load_global_setting
  load_and_authorize_resource

  # GET /global_settings/1/edit
  def edit
  end

  # PATCH/PUT /global_settings/1
  # PATCH/PUT /global_settings/1.json
  def update
    respond_to do |format|
      if @global_setting.update(global_setting_params)
        format.html { redirect_to edit_global_setting_path, notice: "#{t('activerecord.models.global_setting.one')} atualizado com sucesso." }
        format.json { render action: 'edit' }
      else
        format.html { render action: 'edit' }
        format.json { render json: @global_setting.errors, status: :unprocessable_entity }
      end
    end
  end

  private

    # Never trust parameters from the scary internet, only allow the white list through.
    def global_setting_params
      params.require(:global_setting).permit(:single_list)
    end
end
