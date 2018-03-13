require 'rails_helper'

  describe ReviewsController do
    describe 'GET #index' do
      it "displays all reviews made" do
        review = Review.create
        get :index
        expect(response).to render_template("index")
      end
  end

end
