class Rating < ApplicationRecord
  belongs_to :restaurant

  validates :taste_score, presence: true
  validates :service_score, presence: true
  validates :price, presence: true
  validates :comments, presence: true # optional?
  validates :restaurant_id, presence: true 
end
