class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end

  private
    def restaurant_params
      params.require(:restaurant).permit(:name, :city, :state, :post_id)
    end
end