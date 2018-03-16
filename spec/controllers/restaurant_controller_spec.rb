require 'rails_helper'

RSpec.describe RestaurantsController, type: :controller do

  describe "GET #index" do
    user = User.create email: 'test_user@gmail.com', password: '12345678', password_confirmation: '12345678'
    login_as user
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

end
