class Category < ApplicationRecord
  has_many :pies
  has_many :cheeses, through: :pies
  has_many :crusts, through: :pies
  has_many :sauces, through: :pies
  has_many :toppings, through: :pies
  has_many :restaurant_categories
  has_many :restaurants, through: :restaurant_categories

end
