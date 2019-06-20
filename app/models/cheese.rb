class Cheese < ApplicationRecord
  has_many :pie_cheeses
  has_many :pies, through: :pie_cheeses, :source => :pie 




end
