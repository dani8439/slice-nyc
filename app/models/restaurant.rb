class Restaurant < ApplicationRecord
  belongs_to :user
  has_many :categories
  has_many :ratings
  has_many :pies
end
