class Pie < ApplicationRecord


  validates :name, presence: true
  validates :cheese, presence: true
  validates :crust, presence: true
  # validates :restaurant_id, presence: true
end
