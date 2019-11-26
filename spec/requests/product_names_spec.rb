require 'rails_helper'

RSpec.describe "ProductNames", type: :request do
  describe "GET /product_names" do
    it "works! (now write some real specs)" do
      get product_names_path
      expect(response).to have_http_status(302)
    end
  end
end
