class Food < ActiveRecord::Base
  has_many :posts
  has_many :bookmarks
  belongs_to :user
end
