class FoodsController < ApplicationController
  def index
    @foods = Food.all
  end

  def create
    @food = Food.create(food_params)

    if @food.save
      render json: @food, status: :created, location: @food
    else
      render json: @food.errors, status: :unprocessable_entity
    end
  end

  private
    def food_params
      params.require(:food).permit(:name, :bookmarked, :restaurant_id)
    end
end