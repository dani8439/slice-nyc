class PieRating < ApplicationRecord
  belongs_to :pie
  belongs_to :rating 



  validates :taste_score, presence: true
  validates :pie_id, presence: true
  validates :user_id, presence: true

end
