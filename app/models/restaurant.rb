class Restaurant < ApplicationRecord
  has_many :restaurant_ratings
  has_many :users, through: :restaurant_ratings
  has_many :pie_restaurants
  has_many :pies, through: :pie_restaurants, :source => :pie
  has_many :restaurant_categories
  has_many :categories, through: :restaurant_categories, :source => :category



  validates :name, presence: true
  validates :neighborhood, presence: true
  validates :borough, presence: true
  validates :seating, presence: true


  accepts_nested_attributes_for :pies
  accepts_nested_attributes_for :categories


  def self.borough_filter(b)
    where("borough=?", b)
  end


  def self.other
    where.not(borough: ["Brooklyn", "The Bronx", "Manhattan", "Queens", "Staten Island"])
  end
end
