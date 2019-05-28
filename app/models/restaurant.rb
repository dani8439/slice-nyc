class Restaurant < ApplicationRecord

  # has_many :user_restaurants
  # has_many :users, through: :user_restaurants
  # has_many :pie_restaurants
  # has_many :pies, through: :pie_restaurants, :source => :pie
  has_many :restaurant_categories
  has_many :categories, through: :restaurant_categories, :source => :category
  has_many :pie_ratings
  has_many :pies, through: :pie_ratings, :source => :pie
  has_many :users, through: :pie_ratings


  validates :name, presence: true
  validates :neighborhood, presence: true
  validates :borough, presence: true
  validates :seating, presence: true

  accepts_nested_attributes_for :pies
  accepts_nested_attributes_for :categories #before_save here?

  # def category_ids=(ids)
  #   ids.each do |id|
  #     category = Category.find_by(id)
  #     self.categories << category
  #   end
  # end


end
