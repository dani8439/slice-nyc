class RestaurantRating < ApplicationRecord
  belongs_to :restaurant
  belongs_to :user
  has_many :pie_ratings
  has_many :pies, through: :pies_ratings 
end
