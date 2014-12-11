class FoodsController < ApplicationController
  def index
    @foods = Food.all
  end

  def create
    @food = Food.create(food_params)
    @food.restaurant_id = get_restaurant.id

    if @food.save
      render json: @food, status: :created
    else
      render json: @food.errors, status: :unprocessable_entity
    end
  end

  private
    def food_params
      params.require(:food).permit(:name, :bookmarked, :restaurant_id)
    end


    def get_restaurant
      Restaurant.all.last
    end
end