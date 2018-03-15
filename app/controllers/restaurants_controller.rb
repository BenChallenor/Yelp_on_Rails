class RestaurantsController < ApplicationController

  def show
    @restaurant = Restaurant.find(params[:id])
    @reviews = @restaurant.reviews
    # p 'reviews'
    # p @reviews
    # p params
    # p @restaurant
  end

  # Person.where(name: 'Spartacus', rating: 4)


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
