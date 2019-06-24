# Specifications for the Rails Assessment

Specs:
- [x] Using Ruby on Rails for the project
- [x] Include at least one has_many relationship (x has_many y; e.g. User has_many Recipes) - Category has_many Pies, Crust has_many Pies, Sauce has_many Pies.

- [x] Include at least one belongs_to relationship (x belongs_to y; e.g. Post belongs_to User) - Pie belongs_to Crust, Pie belongs_to Sauce, Pie belongs_to Category, PieCheese (join table) belongs to Pie and to Cheese, PieRestaurant (another Join Table) belongs to Pie and to Restaurant, PieTopping (another Join Table) belongs to Pie, and to Topping, RestaurantCategory (again a Join Table) belongs_to Restaurant, and to Category. RestaurantRating (Join Table) belongs to Restaurant, and to User.

- [x] Include at least two has_many through relationships (x has_many y through z; e.g. Recipe has_many Items through Ingredients) - Category has_many Cheeses, through Pies, it also has_many Crusts through Pies, and  Sauces through Pies, and Toppings through Pies.  

- [x] Include at least one many-to-many relationship (x has_many y through z, y has_many x through z; e.g. Recipe has_many Items through Ingredients, Item has_many Recipes through Ingredients) - Category has_many Restaurants through RestaurantCategories, and Restaurant has_many Categories through RestaurantCategories. Cheese has_many Pies through PieCheeses, and Pie has_many Cheeses through PieCheeses. Pie has_many Toppings through PieToppings, and Toppings has_many Pies through PieToppings. Restaurant has_many Users through RestaurantRatings, and User has_many Restaurants through RestaurantRatings. Restaurant has_many Pies through PieRestaurants, and Pie has_many Restaurants through PieRestaurants.

- [x] The "through" part of the has_many through includes at least one user submittable attribute, that is to say, some attribute other than its foreign keys that can be submitted by the app's user (attribute_name e.g. ingredients.quantity) - Users can submit attributes upon Restaurant rating, including a rating for atmosphere, service, and food, as well as add comments for their RestaurantRating. (RestaurantRating.atmosphere_score, RestaurantRating.service_score, RestaurantRating.food_score, RestaurantRating.comments)

- [x] Include reasonable validations for simple model objects (list of model objects with validations e.g. User, Recipe, Ingredient, Item) - Validations for presence of attributes on Category (new, crust, and shape). Validations for presence of attributes on Pie (new), Validations for presence of attributes on Restaurant (name, neighborhood, borough, and seating), Validations on RestaurantRating, checks for presence of atmosphere_score, service_score, and food_score before rating can be created. Validations for User, cannot be created without a password, username, or an email.

- [x] Include a class level ActiveRecord scope method (model object & class method name and URL to see the working feature e.g. User.most_recipes URL: /users/most_recipes) - Scope Method in Restaurant Model, for filtering restaurants in controller, class methods of .brooklyn, .the_bronx, .manhattan, .queens, .staten_island, and .other which are used to filter restaurants in index view. (route goes from restaurants to restaurants?utf8=✓&borough=The+Bronx&commit=Filter), and for each additional method called based on user preference. 

- [x] Include signup (how e.g. Devise) ✓
- [x] Include login (how e.g. Devise) ✓
- [x] Include logout (how e.g. Devise) ✓
- [x] Include third party signup/login (how e.g. Devise/OmniAuth) - Users can login/signup through Facebook.
- [X] Include nested resource show or index (URL e.g. users/2/recipes) - Restaurants/1/RestaurantRatings/1 is the nested Route, RestaurantRating has routes for new, create, edit, update, destroy and show.
- [X] Include nested resource "new" form (URL e.g. recipes/1/ingredients/new) - restaurants/1/restaurantratings/new (as stated above).
- [X] Include form display of validation errors (form URL e.g. /recipes/new). Validation errors are displayed on pages for /pies/new, as well as for /restaurant/new. Same thing goes for edit pages of both.

Confirm:
- [x] The application is pretty DRY - I hope so. Have tried to move repetitive code into methods that can be called and streamline the code into private methods in the controller, but I'm sure there's always room for improvement. Have also tried to limit unnecessary routes, etc so it's not too bogged down.
- [x] Limited logic in controllers - Hope it's limited.
- [x] Views use helper methods if appropriate - helper methods in SessionsHelper for log_in, current_user, if logged_in? and whether requiring login in order to prevent users who aren't logged in from accessing certain features (such as adding to the database, or creating a RestaurantRating.)
- [x] Views use partials if appropriate - Forms have been moved into partials for Pie new and edit views, as well as for RestaurantRating new and edit views, and for Restaurant new and edit views.
