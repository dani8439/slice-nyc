class Category < ApplicationRecord
  has_many :restaurants


  validates :name, presence: true
  validates :crust, presence: true
  validates :shape, presence: true
end
