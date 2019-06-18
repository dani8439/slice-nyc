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


  def self.brooklyn
    where(borough: "Brooklyn")
  end

  def self.the_bronx
    where(borough: "The Bronx")
  end

  def self.manhattan
    where(borough: "Manhattan")
  end

  def self.queens
    where(borough: "Queens")
  end

  def self.staten_island
    where(borough: "Staten Island")
  end


end
