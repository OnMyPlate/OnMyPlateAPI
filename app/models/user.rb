class User < ActiveRecord::Base
  has_many :posts

  validates :username, presence: :true, on: :create
  validates :email, presence: :true, on: :create

  enum status: [:admin, :guest, :member]

  has_secure_password


end