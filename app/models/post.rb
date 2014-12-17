class Post < ActiveRecord::Base
  has_one :food_image
  has_many :likes
  belongs_to :user
  belongs_to :food
end