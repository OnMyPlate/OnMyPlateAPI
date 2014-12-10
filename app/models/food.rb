class Food < ActiveRecord::Base
  has_many :posts
  has_many :food_images
  belongs_to :restaurant
end
