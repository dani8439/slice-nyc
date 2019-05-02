class Pie < ApplicationRecord
  has_many :cheeses
  has_many :crusts
  has_many :sauces
  has_many :toppings

  validates :name, presence: true

  def cheese_ids=(ids)
    ids.each do |id|
      cheese = Cheese.find(id)
      self.cheeses << cheese
    end
  end

  def topping_ids=(ids)
    ids.each do |id|
      topping = Topping.find(id)
      self.toppings << topping
    end
  end
end
