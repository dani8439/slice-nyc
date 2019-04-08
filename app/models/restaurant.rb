class Restaurant < ApplicationRecord
  has_many :user_restaurants
  has_many :users, through: :user_restaurants
  belongs_to :category


  validates :name, presence: true
  validates :neighborhood, presence: true
  validates :borough, presence: true
  validates :sit_down_or_take_out, presence: true

end
