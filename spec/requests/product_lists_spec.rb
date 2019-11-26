require 'rails_helper'

RSpec.describe "ProductLists", type: :request do
  describe "GET /product_lists" do
    it "works! (now write some real specs)" do
      get product_lists_path
      expect(response).to have_http_status(302)
    end
  end
end
