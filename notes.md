Models:

  User - has_many :restaurants, has_many :categories, through: :restaurants, has_many :ratings, through: :restaurants, has_many :ratings, has_many :categories
    - email
    - password_digest
    - UID

  Restaurant JOIN TABLE? belongs_to :user, has_many :
    - name
    - neighborhood -- ? Category of it's own?
    - multiple locations ?
    - type : sit down, take out, standing room only
    - menu : options aside from just pizza
    - cost : $$$$$
    - rating_id
    - user_id

  Category belongs_to :restaurant
    - brick oven
    - coal oven
    - deep dish
    - grandma/grandpa pie
    - restaurant_id ?

  Rating belongs_to :restaurant
    - taste
    - additional notes/comments on the food/atmosphere
    - restaurant_id ?
