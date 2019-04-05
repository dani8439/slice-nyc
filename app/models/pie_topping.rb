class PieTopping < ApplicationRecord
  belongs_to :pie
  belongs_to :topping

  validates :pie_id, presence: true
  validates :topping_id, presence: true 
end
