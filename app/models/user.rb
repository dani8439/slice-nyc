class User < ApplicationRecord
  has_many :restaurants
  has_many :categories, through: :restaurants
  has_many :ratings, through: :restaurants
  has_many :pieces, through: :restaurant

  has_secure_password

  validates :password, presence: true
  validates :username, presence: true
  validates :email, presence: true, uniqueness: true
end
