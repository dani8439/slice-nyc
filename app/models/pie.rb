class Pie < ApplicationRecord
  has_many :pie_toppings
  has_many :toppings, through: :pie_toppings


  validates :name, presence: true
  validates :cheese, presence: true
  validates :crust, presence: true
  validates :shape, presence: true
  # validates :pan, presence: true
end
