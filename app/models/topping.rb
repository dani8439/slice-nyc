class Topping < ApplicationRecord
  has_many :pie_toppings
  has_many :pies, through: :pie_toppings


  validates :name, presence: true

end
