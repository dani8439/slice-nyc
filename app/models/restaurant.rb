class Restaurant < ApplicationRecord

  validates :name, presence: true
  validates :neighborhood, presence: true
  validates :borough, presence: true
  validates :sit_down_or_take_out, presence: true
  # validates :pie_id, presence: true # do I need this, cannot be done before pie is created?

end
