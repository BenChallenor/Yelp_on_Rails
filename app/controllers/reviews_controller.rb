class ReviewsController < ApplicationController

  def new
  end

  def index
    @reviews = Review.all
  end

  def show
    @review = Review.find(params[:id])
  end

  def create
    @review = Review.new(params.require(:review).permit(:rating, :comment))
    @review.save
    redirect_to restaurant_reviews_path
  end
end
