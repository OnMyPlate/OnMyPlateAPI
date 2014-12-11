class FoodsController < ApplicationController
  def index
    @foods = Food.all
  end

  private
    def food_params
      params.require(:food).permit(:name, :bookmarked, :restaurant_id)
    end
end