Summary: An interactive application which allows a registered user to catalogue Pizza places in the NYC area.
Information that users may input to catalogue Pizza:

  - restaurant's are sit down, take out, or standing room only.
  - if other food aside from pizza is available.
  - is delivery available.
  - style of pizza available at the restaurant: Neapolitan, Chicago-Style/Deep Dish, St. Louis Style, California/Gourmet Style, Greek, Sicilian, Detroit, Grandma/Grandpa Pies.
  - Thin Crust/Thick crust.
  - Aged or un-aged dough.
  - Fresh Mozzarella or commercial - and is it homemade? (Don't know if this is actually necessary)
  - Type of oven used to cook pizza: Coal Oven, Wood Fired, or Commercial Gas Oven.
  - Neighborhood and borough of the Restaurant.
  - If the Restaurant is part of a chain.
  - Users may rate the pizza, the price, the service, and add any additional notes about the experience and/or atmosphere.

Using form_for, users will submit information on Restaurant.

Validations for presence of email, username, and password, and uniqueness of email.

Validations in model of presence of attributes -- ie, cannot catalogue a pizza without oven type, pizza style, cannot leave ratings blank etc.

Scope method ??

Implement an authentication system?

Omniauth for third party (facebook) login.

Nested routes: Restaurant within user? Pie within restaurant (for new, index)

Models:

  User - has_many :restaurants, has_many :categories, through: :restaurants, has_many :ratings, through: :restaurants, has_many :pies, through: :restaurants
    - email
    - password_digest
    - UID

  Restaurant - NOT JOIN TABLE. Need to amend after meeting with Kevin, notes in notebook.
    JOIN TABLE belongs_to :user, has_many :categories, has_many :pies, has_many :ratings
    - name
    - neighborhood -- ? Category of it's own?
    - multiple locations ?
    - type : sit down, take out, standing room only -- Or kind??
    - menu : full menu or just pizza?
    - cost : $$$$$
    - rating_id


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
    - Crust - thin or thick, also aged? (Is this own subcategory?)
    - Cheese - Fresh, commercial, and homemade (should this be it's own subcategory?)
    - toppings - pepperoni, olives, onions, peppers, sausage, etc, etc (should this be it's own subcategory?)
    <!-- - specialty pies -->


  Category belongs_to :restaurant
    <!-- - brick fire -->
    - type: coal fired oven, wood fired fire, commercial - Gas
    - restaurant_id ?

  Rating belongs_to :restaurant
    <!-- - menu goes here?? -->
    - taste
    - service score
    - additional notes/comments on the food/atmosphere
    - restaurant_id ?

  <!-- Menu a category of it's own? -- NOPE
    - full menu
    - only pizza -->
