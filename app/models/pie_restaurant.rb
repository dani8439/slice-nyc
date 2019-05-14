class PieRestaurant < ApplicationRecord
  belongs_to :pie
  belongs_to :restaurant 
end
