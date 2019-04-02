Models:

  User - has_many :restaurants, has_many :categories, through: :restaurants, has_many :ratings, through: :restaurants, has_many :ratings, has_many :categories
    - email
    - password_digest
    - UID

  Restaurant JOIN TABLE? belongs_to :user, has_many :
    - name
    - neighborhood -- ? Category of it's own?
    - multiple locations ?
    - type : sit down, take out, standing room only -- Or kind??
    - menu : options aside from just pizza
    - cost : $$$$$
    - rating_id
    - user_id

  Pies belong_to :restaurant
    - grandma/grandpa pie
    - NY Style
    - Neapolitan -- sub marinara, margherita
    - Chicago/deep_dish
    - Sicilian
    - Greek
    - California/Gourmet Pizza
    - Detroit Pizza
    - St. Louis
    - or crust is own attribute - thin or thick crust pizza own sub category??

  Category belongs_to :restaurant
    <!-- - brick fire -->
    - coal fired oven
    - wood fired fire
    - commercial - Gas
    - restaurant_id ?

  Rating belongs_to :restaurant
    - menu goes here??
    - taste
    - additional notes/comments on the food/atmosphere
    - restaurant_id ?

  <!-- Menu a category of it's own? -- NOPE
    - full menu
    - only pizza -->