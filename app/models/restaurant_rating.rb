class RestaurantRating < ApplicationRecord
  belongs_to :restaurant
  belongs_to :user

  validates :atmosphere_score, presence: true
  validates :service_score, presence: true
  validates :food_score, presence: true


  # def self.others
  #   where.not("user_id=?", current_user)
  # end
end
