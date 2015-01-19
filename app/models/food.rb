class Food < ActiveRecord::Base
  has_many :posts, dependent: :destroy
  has_many :bookmarks, dependent: :destroy
  belongs_to :user
end
