class Pie < ApplicationRecord
  has_many :cheeses
  has_many :crusts
  has_many :sauces
  has_many :toppings

  validates :name, presence: true 
end
