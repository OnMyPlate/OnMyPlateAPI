class FoodsController < ApplicationController

  def index
    @foods = Food.all
  end

  def create
    @food = Food.create(food_params)
    @food.avg_rating = Food.get_avg_rating

    @food.user_id = get_user(get_token).id
    @food.restaurant_id = get_restaurant.id

    if @food.save
      render json: @food, status: :created
    else
      render json: @food.errors, status: :unprocessable_entity
    end
  end

  private
    def food_params
      params.require(:food).permit(:name, :avg_rating, :bookmarked, :user_id, :restaurant_id)
    end

    def get_token
      token = request.headers.env['HTTP_AUTHORIZATION'].gsub(/Token token=/, "")
    end

    def get_user(token)
      User.where(token: token)[0]
    end


    def get_restaurant
      Restaurant.all.last
    end
end