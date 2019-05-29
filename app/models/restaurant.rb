class Restaurant < ApplicationRecord

  has_many :restaurant_ratings
  has_many :users, through: :restaurant_ratings 
  has_many :pie_restaurants
  has_many :pies, through: :pie_restaurants, :source => :pie
  has_many :restaurant_categories
  has_many :categories, through: :restaurant_categories, :source => :category
  # has_many :pie_ratings
  # has_many :pies, through: :pie_ratings, :source => :pie
  # has_many :users, through: :pie_ratings


  validates :name, presence: true
  validates :neighborhood, presence: true
  validates :borough, presence: true
  validates :seating, presence: true

  accepts_nested_attributes_for :pies
  accepts_nested_attributes_for :categories



end
