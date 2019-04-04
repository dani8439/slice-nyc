class Pie < ApplicationRecord
  belongs_to :restaurant
  has_many :toppings

  validates :name, presence: true
  validates :cheese, presence: true
  validates :crust, presence: true
  validates :toppings, presence: true
  validates :restaurant_id, presence: true
  # validates :specialty_pies, presence: true ? optional
end
