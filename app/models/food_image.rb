class FoodImage < ActiveRecord::Base
  belongs_to :post

  def self.cached_all
    @cached_all ||= self.all
  end
end