class ReviewsController < ApplicationController

  def new
        @restaurant = Restaurant.find(params[:restaurant_id])
    # @review = Review.new(params.require(:review).permit(:rating, :comment))

  end


  def show
    @review = Review.find(params[:id])
    @restaurant = Restaurant.find(params[:restaurant_id])
  end

  def create
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = @restaurant.reviews.create(params.require(:review).permit(:rating, :comment))
    @review.save
    redirect_to restaurant_path(@restaurant)
    params[:restaurant_id]
  end
end
