class Pie < ApplicationRecord
  belongs_to :cheese
  belongs_to :crust
  belongs_to :sauce
  belongs_to :topping
  has_many :categories
  has_many :pie_ratings
  has_many :users, through: :pies_ratings

 
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
