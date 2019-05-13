class Pie < ApplicationRecord
  belongs_to :crust
  belongs_to :sauce

  has_many :pie_cheeses
  has_many :cheeses, through: :pie_cheeses
  has_many :pie_toppings
  has_many :toppings, through: :pie_toppings
  # has_many :categories
  belongs_to :category 
  has_many :pie_ratings
  has_many :users, through: :pies_ratings
  has_many :restaurant_pies
  has_many :restaurants, through: :restaurant_pies


  validates :name, presence: true
  accepts_nested_attributes_for :toppings
  accepts_nested_attributes_for :cheeses
  accepts_nested_attributes_for :restaurants


end
