class Like < ActiveRecord::Base
  belongs_to :post
  belongs_to :user

  def self.cached_all
    @cached_all ||= self.all
  end
end