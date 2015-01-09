class User < ActiveRecord::Base
  has_many :posts
  has_many :foods
  has_many :likes
  has_many :bookmarks

  validates :username, presence: :true, on: :create
  validates :email, presence: :true, uniqueness: true, on: :create

  enum status: [:admin, :member]

  
  # Adds methods to set and authenticate against a BCrypt password. This mechanism requires you to have a password_digest attribute.
  has_secure_password

  before_create :set_token


  def self.email_confirmed
    @confirmed = true
  end

  def self.isConfirmed
    @confirmed
  end

  private

    def set_token
      return if token.present?
      self.token = generate_token
    end

    def generate_token
      # generates token for the user to send it to UI in order to complete the login process
      SecureRandom.uuid.gsub(/\-/, '')
    end

end