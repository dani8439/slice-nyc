class Pie < ApplicationRecord
  has_many :pie_toppings
  has_many :toppings, through: :pie_toppings


  validates :name, presence: true
  # validates :cheese, presence: true -- no Jersey pie and Clam pie don't have cheese always
  validates :crust, presence: true
  validates :shape, presence: true
  # validates :pan, presence: true -- nope, only some pizzas baked in pans, many cooked right on stones
end
