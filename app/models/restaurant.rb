class Restaurant < ApplicationRecord
  belongs_to :user
  has_many :categories
  has_many :menus
  has_many :ratings 
end
