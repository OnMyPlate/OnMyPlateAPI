class Post < ActiveRecord::Base
  has_many :likes
  has_many :tags
  has_one :restaurant
  belongs_to :user
end