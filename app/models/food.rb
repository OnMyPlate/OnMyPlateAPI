class Food < ActiveRecord::Base
  has_many :posts
  belongs_to :restaurant
end
