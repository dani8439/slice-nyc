class Pie < ApplicationRecord
  belongs_to :crust
  belongs_to :sauce

  has_many :pie_cheeses
  has_many :cheeses, through: :pie_cheeses
  has_many :pie_toppings
  has_many :toppings, through: :pie_toppings
  has_many :categories
  has_many :pie_ratings
  has_many :users, through: :pies_ratings


  validates :name, presence: true
  # accepts_nested_attributes_for :toppings
  # accepts_nested_attributes_for :cheeses


# don't think accepts nested attributes is way to go. Must change forms too.
  def cheese_ids=(ids)
    ids.each do |id|
      cheese = Cheese.find_by(id)
      self.cheeses << cheese
    end
  end

  def topping_ids=(ids)
    ids.each do |id|
      topping = Topping.find_by(id)
      self.toppings << topping
    end
  end
end
