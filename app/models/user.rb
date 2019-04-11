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

#   class User < ActiveRecord::Base
#   devise :database_authenticatable, :registerable,
#          :recoverable, :rememberable, :trackable, :validatable,
#      :omniauthable, :omniauth_providers => [:digitalocean]
#
#   def self.from_omniauth(auth)
#       where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
#         user.provider = auth.provider
#         user.uid = auth.uid
#         user.email = auth.info.email
#         user.password = Devise.friendly_token[0,20]
#       end
#   end
# end

  def self.find_or_create_by_omniauth(auth_hash)
    self.where(email: auth_hash["info"]["email"]).first_or_create do |user|
      user.username = auth_hash["info"]["name"]
      user.provider = auth_hash["provider"]
      user.uid = auth_hash["uid"]
      user.password = SecureRandom.hex

    end
  end
end
