class Restaurant < ApplicationRecord
  has_many :user_restaurants
  has_many :users, through: :user_restaurants
  belongs_to :category


  validates :name, presence: true
  validates :neighborhood, presence: true
  validates :borough, presence: true
  validates :seating, presence: true
  validates :category_id, presence: true

end
