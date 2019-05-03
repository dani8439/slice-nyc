class Restaurant < ApplicationRecord
  belongs_to :category
  has_many :user_restaurants
  has_many :users, through: :user_restaurants



  validates :name, presence: true
  validates :neighborhood, presence: true
  validates :borough, presence: true
  validates :seating, presence: true
  validates :category_id, presence: true

end
