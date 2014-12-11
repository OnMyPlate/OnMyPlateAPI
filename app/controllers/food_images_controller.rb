class FoodImagesController < ApplicationController
  def index
    @food_images = FoodImage.all
  end

  private
    def food_image_params
      params.require(:food_image).permit(:image_url, :post_id, :food_id)
    end
end