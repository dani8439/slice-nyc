class Topping < ApplicationRecord
  has_many :pie_toppings
  has_many :pies, through: :pie_toppings, :source => :pie
end
