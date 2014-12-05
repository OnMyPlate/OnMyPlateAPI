class User < ActiveRecord::Base
  has_many :posts

  validates :username, presence: :true, uniqueness: true, on: :create
  validates :email, presence: :true, uniqueness: true, on: :create

  enum status: [:admin, :guest, :member]

  
  # Adds methods to set and authenticate against a BCrypt password. This mechanism requires you to have a password_digest attribute.
  has_secure_password

  before_create :set_token


  private
    def set_token
      return if token.present?
      self.token = generate_token
    end

    def generate_token
      # generates token for the user to send it to UI in order to complete the login procedures
      SecureRandom.uuid.gsub(/\-/, '')
    end

end