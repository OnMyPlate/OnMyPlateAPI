class Post < ActiveRecord::Base
  has_one :food_image, dependent: :destroy
  has_many :likes, dependent: :destroy
  belongs_to :user
  belongs_to :food
end