require 'rails_helper'

RSpec.describe "GlobalSettings", type: :request do
  describe "GET /global_settings" do
    it "works! (now write some real specs)" do
      get edit_global_setting_path(id: GlobalSetting.first.id)
      expect(response).to have_http_status(302)
    end
  end
end
