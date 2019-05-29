class Pie < ApplicationRecord
  belongs_to :crust
  belongs_to :sauce
  belongs_to :category
  belongs_to :pie_rating 

  has_many :pie_cheeses
  has_many :cheeses, through: :pie_cheeses
  has_many :pie_toppings
  has_many :toppings, through: :pie_toppings
  has_many :pie_ratings
  # has_many :users, through: :pie_ratings
  # has_many :restaurants, through: :pie_ratings
  has_many :pie_restaurants
  has_many :restaurants, through: :pie_restaurants


  validates :name, presence: true

  accepts_nested_attributes_for :toppings
  accepts_nested_attributes_for :cheeses
  accepts_nested_attributes_for :restaurants


end
