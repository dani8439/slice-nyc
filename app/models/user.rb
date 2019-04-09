class User < ApplicationRecord
  has_many :user_restaurants
  has_many :restaurants, through: :user_restaurants
  has_many :pie_ratings, through: :user_restaurants

  has_secure_password

  validates :password, presence: true
  validates :username, presence: true
  validates :email, presence: true, uniqueness: true


  # devise_token_auth model
  # Article How to Use Omniauth to Authenticate Your Users.

  def self.find_or_create_by_omniauth(auth_hash) #??
    self.where(email: auth_hash["info"]["email"]).first_or_create do |user|
      user.username = auth_hash["info"]["name"]
      user.provider = auth_hash["provider"]
      user.uid = auth_hash["uid"]
      user.password = SecureRandom.hex

    end
  end
end
