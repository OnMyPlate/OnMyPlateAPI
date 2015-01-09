class Food < ActiveRecord::Base
  has_many :posts, dependent: :destroy
  has_many :bookmarks
  belongs_to :user
end
