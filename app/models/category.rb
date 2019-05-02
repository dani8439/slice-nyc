class Category < ApplicationRecord
  has_many :restaurants
  has_many :pies



  validates :name, presence: true
  validates :crust, presence: true
  validates :shape, presence: true
end
