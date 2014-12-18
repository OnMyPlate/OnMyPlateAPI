class Food < ActiveRecord::Base
  has_many :posts
  belongs_to :user

  def self.cached_all
    @cached_all ||= self.all
  end
end
