class PieRating < ApplicationRecord
  belongs_to :user_restaurant


  validates :taste_score, presence: true
  validates :pie_id, presence: true
  validates :user_id, presence :true

end
