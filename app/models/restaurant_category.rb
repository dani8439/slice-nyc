class RestaurantCategory < ApplicationRecord
  belongs_to :restaurant #, optional: true
  belongs_to :category #, optional: true

end
