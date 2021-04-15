class RestaurantsController < ApplicationController

  def index
    @restaurants = Restaurant.all
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    # create new restaurant
    @restaurant = Restaurant.new(restaurant_params)

    #if valid params
    if @restaurant.save
      redirect_to @restaurant, notice: 'Restaurant created.'
    # else
    else
      render :new
    end
  end

  private
  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :category)
  end
end
