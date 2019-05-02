class Sauce < ApplicationRecord
  belongs_to :pie

  validates :name, presence true 
end
