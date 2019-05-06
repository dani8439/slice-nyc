class PieTopping < ApplicationRecord
  belongs_to :pie
  belongs_to :topping 
end
