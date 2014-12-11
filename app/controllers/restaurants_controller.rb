class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)

    if @restaurant.save
      render json: @restaurant, status: :created
    else
      render json: @restaurant.errors, status: :unprocessable_entity
    end
  end

  private
    def restaurant_params
      params.require(:restaurant).permit(:name, :city, :state)
    end
end