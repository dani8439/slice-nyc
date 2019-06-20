class Sauce < ApplicationRecord
  has_many :pies, :class_name => 'Pie'

end
