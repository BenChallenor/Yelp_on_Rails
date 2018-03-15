class ReviewsController < ApplicationController

  def new
  end


  def show
    @review = Review.find(params[:id])
    @restaurant = Restaurant.find(params[:restaurant_id])
  end

  def create
    @review = Review.new(params.require(:review).permit(:rating, :comment))
    @review.save
    @restaurant = Restaurant.find(params[:restaurant_id])
    redirect_to restaurant_path(@restaurant)
  end
end
