class PieRating < ApplicationRecord
  belongs_to :pie
  belongs_to :user
  # belongs_to :restaurant


  validates :taste_score, presence: true #will cause error when trying to update restaurant itself.
  # validates :pie_id, presence: true
  # validates :user_id, presence: true


end
