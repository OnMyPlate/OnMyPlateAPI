class Food < ActiveRecord::Base
  has_many :posts
  belongs_to :user
  belongs_to :restaurant
end
