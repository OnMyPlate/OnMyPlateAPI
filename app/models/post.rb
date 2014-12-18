class Post < ActiveRecord::Base
  has_one :food_image
  has_many :likes
  belongs_to :user
  belongs_to :food

  def self.cached_all
    @cached_all ||= self.all
  end
end