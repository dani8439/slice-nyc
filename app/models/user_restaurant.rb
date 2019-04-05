class UserRestaurant < ApplicationRecord
  belongs_to :user
  belong_to :restaurant
  has_many :pie_ratings

  validates :user_id, presence: true
  validates :restaurant_id, presence: true 
end
