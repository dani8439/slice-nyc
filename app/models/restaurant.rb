class Restaurant < ApplicationRecord
  belongs_to :category

  has_many :user_restaurants
  has_many :users, through: :user_restaurants
  has_many :pie_restaurants
  has_many :pies, through: :pie_restaurants, :source => :pie
  has_many :restaurant_categories
  has_many :categories, through: :restaurant_categories, :source => :category


  validates :name, presence: true
  validates :neighborhood, presence: true
  validates :borough, presence: true
  validates :seating, presence: true
  # validates :category_ids, presence: true

  accepts_nested_attributes_for :pies
  accepts_nested_attributes_for :categories

end
