class Cheese < ApplicationRecord
  has_many :pies 

  validates :name, presence: true

end
