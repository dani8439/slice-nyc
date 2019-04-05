class Topping < ApplicationRecord


  validates :name, presence: true
  validates :pie_id, presence: true
end
