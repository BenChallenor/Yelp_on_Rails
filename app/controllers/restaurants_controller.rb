class RestaurantsController < ApplicationController

  def show
    @restaurant = Restaurant.find(params[:id])
    @reviews = Review.where(restaurant_id: "#{params[:id]}")
    p @reviews
  end

  def index
    @restaurants = Restaurant.all
  end

  def new
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    @restaurant.save
    redirect_to @restaurant
  end

  private
  def restaurant_params
    params.require(:restaurant).permit(:name, :description)
  end

end
