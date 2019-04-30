class Pie < ApplicationRecord
  has_many :pie_toppings
  has_many :toppings, through: :pie_toppings


  validates :name, presence: true
  validates :crust, presence: true
end
