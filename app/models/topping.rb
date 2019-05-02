class Topping < ApplicationRecord
  belongs_to :pie


  validates :name, presence: true
end
