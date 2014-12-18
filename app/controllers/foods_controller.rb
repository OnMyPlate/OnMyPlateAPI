class FoodsController < ApplicationController

  def index
    @foods = Food.cached_all
  end

  def show
    @food = Food.find(params[:id])
  end

  def create
    @food = Food.create(food_params)

    @food.user_id = get_user(get_token).id
    
    if @food.save
      render json: @food, status: :created
    else
      render json: @food.errors, status: :unprocessable_entity
    end
  end

  def update
    @food = Food.find(params[:id])

    if @food.update(food_params)
      head :no_content
    else
      render json: @food.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @food = Food.find(params[:id])
    @food.destroy

    head :no_content
  end

  private
    def food_params
      params.require(:food).permit(:name, :restaurant_name, :city, :state, :avg_rating, :bookmarked, :user_id)
    end

    def get_token
      token = request.headers.env['HTTP_AUTHORIZATION'].gsub(/Token token=/, "")
    end

    def get_user(token)
      User.where(token: token)[0]
    end
end