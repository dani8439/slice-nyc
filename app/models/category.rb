class Category < ApplicationRecord


  validates :name, presence: true
  validates :restaurant_id, presence: true
end
