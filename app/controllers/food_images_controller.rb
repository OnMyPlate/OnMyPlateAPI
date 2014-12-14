class FoodImagesController < ApplicationController
  def index
    @food_images = FoodImage.all
  end

  def create
    @food_image = FoodImage.new(food_image_params)
    @food_image.post_id = get_post.id

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

    def get_post
      Post.all.last
    end
end