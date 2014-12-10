class FoodImage < ActiveRecord::Base
  belongs_to :food
  belongs_to :post
end