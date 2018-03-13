require 'rails_helper'

RSpec.describe "Review2s", type: :request do
  describe "GET /review2s" do
    it "works! (now write some real specs)" do
      get review2s_path
      expect(response).to have_http_status(200)
    end
  end
end
