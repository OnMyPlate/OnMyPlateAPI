class User < ActiveRecord::Base
  has_many :posts

  validates :username, presence: :true, on: :create
  validates :email, presence: :true, on: :create

  enum status: [:admin, :guest, :member]

  has_secure_password

  before_create :set_token


  private
    def set_token
      return if token.present?
      self.token = generate_token
    end

    def generate_token
      SecureRandom.uuid.gsub(/\-/, '')
    end

end