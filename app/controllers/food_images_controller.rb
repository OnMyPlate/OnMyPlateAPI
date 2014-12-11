class FoodImagesController < ApplicationController
  def index
    @food_images = FoodImage.all
  end

  def create
    @food_image = FoodImage.new(food_image_params)

    if @food_image.save
      render json: @food_image, status: :created
    else
      render json: @food_image.errors, status: :unprocessable_entity
    end
  end

  private
  
    def food_image_params
      params.require(:food_image).permit(:image_url, :post_id)
    end
end