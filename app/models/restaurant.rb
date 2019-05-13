class Restaurant < ApplicationRecord
  belongs_to :category
  has_many :user_restaurants
  has_many :users, through: :user_restaurants
  has_many :restaurant_pys
  has_many :pies, through: :restaurant_pys 


  validates :name, presence: true
  validates :neighborhood, presence: true
  validates :borough, presence: true
  validates :seating, presence: true
  validates :category_id, presence: true

end
