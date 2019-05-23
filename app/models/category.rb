class Category < ApplicationRecord
  has_many :pies
  has_many :cheeses, through: :pies
  has_many :crusts, through: :pies
  has_many :sauces, through: :pies
  has_many :toppings, through: :pies
  has_many :restaurant_categories
  has_many :restaurants, through: :restaurant_categories



  validates :name, presence: true
  validates :crust, presence: true
  validates :shape, presence: true
end
