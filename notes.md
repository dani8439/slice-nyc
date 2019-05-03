Summary: An interactive application which allows a registered user to catalogue Pizza places in the NYC area.
Information that users may input to catalogue Pizza:

  - restaurant's are sit down, take out, or standing room only.
  - if other food aside from pizza is available.
  - is delivery available.
  - style of pizza available at the restaurant: Neapolitan, NY Style, Chicago-Style/Deep Dish, St. Louis Style, California/Gourmet Style, Greek, Sicilian, Detroit, Grandma/Grandpa Pies.
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

Nested routes: Restaurant within user? Pie within restaurant (for new, index) -- nothing within user.

Models:

  User
    - email
    - password_digest
    - UID

  Restaurant - NOT JOIN TABLE. Need to amend after meeting with Kevin, notes in notebook.
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
    - added shape
    - added pan (baked in greased cast iron, etc.)
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

    User_Restaurants - Join table of Users and Restaurants.
    - user_id
    - restaurant_id

    Pie_Ratings - Join table of Ratings and Pies.
    - pie_id
    - user_id
    - taste_score
    - comments

    Pie_Toppings - Join table of Pies and Toppings




  //////////
  Rejigged Category.

  A pie should be something in system, but joined with toppings table, and user_id? No topping can also be a choice. So that user can say category.pie.toppings == Margherita pie with extra cheese for example. And then grade that.

  What attributes to put on pie so that there is one NY Style pepperoni pizza in the database and not twenty? Toppings must be added.


  /// For next week:
  user can submit a review
  link a specific pie with a restaurant so can be rated. 
