class Restaurant < ApplicationRecord
  belongs_to :user
  has_many :categories
  has_many :ratings
  has_many :pies
  has_many :toppings, through: :pies

  validates :name, presence: true
  validates :neighborhood, presence: true
  validates :borough, presence: true
  validates :sit_down_or_take_out, presence: true
  # validates :pie_id, presence: true # do I need this, cannot be done before pie is created?
  validates :user_id, presence: true
  # validates :rating_id, presence: true # do I need this before rating is created?
end
