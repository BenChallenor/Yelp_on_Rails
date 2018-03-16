class ReviewsController < ApplicationController

  def new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new
  end


  def show
    @review = Review.find(params[:id])
    @restaurant = Restaurant.find(params[:restaurant_id])
  end

  def create
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = @restaurant.reviews.create(params.require(:review).permit(:rating, :comment))
    if @review.save
    redirect_to restaurant_path(@restaurant)
    else
    render 'new'
    end
  end
end
