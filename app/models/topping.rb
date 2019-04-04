class Topping < ApplicationRecord
  belongs_to :pie

  validates :name, presence: true
  validates :pie_id, presence: true 
end
