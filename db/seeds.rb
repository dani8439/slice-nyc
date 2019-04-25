# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

cat1 = Category.create(name: "Wood Fired"),
cat2 = Category.create(name: "Coal Fired"),
cat3 = Category.create(name: "Commercial Gas Oven"),


pizza1 = Pie.create(name: "Neopolitan", crust: "Thin", cheese: "Mozzarella", shape: "Round"),
pizza2 = Pie.create(name: "Chicago-Style/Deep Dish", crust: "Deep-dish", cheese: "Mozzarella", shape: "Round", pan: "Oiled Steel Pan"),
pizza3 = Pie.create(name: "St. Louis Style", crust: "Cracker", cheese: "Provel", shape: "Round"),
pizza4 = Pie.create(name: "California/Gourmet Style", crust: "Thin", cheese: "Optional", shape: "Round"),
pizza5 = Pie.create(name: "Greek Style", crust: "Somewhere between crunchy and thicker Sicilian Cousin", cheese: "Mozzarella", shape: "Round", pan: "Oiled Shallow Pan"),
pizza6 = Pie.create(name: "Sicilian Style", crust: "Thick", cheese: "Mozzarella", shape: "Rectangle"),
pizza7 = Pie.create(name: "Detroit Style", crust: "Deep-Dish", cheese: "Mozzarella", shape: "Square", pan: "Oiled Blue Steel Pan or Cast Iron", additional_comments: "Carmelized Crust"),
pizza8 = Pie.create(name: "Grandma Pie", crust: "Thin", cheese: "Mozzarella", shape: "Rectangle", pan: "Olive-Oil coated pan"),
pizza9 = Pie.create(name: "NY Style", crust: "Thin", cheese: "Mozzarella", shape: "Round"),
pizza10 = Pie.create(name: "Pizza Margherita", crust: "Thin", cheese: "Mozzarella", shape: "Round"),
pizza11 = Pie.create(name: "Italian Tomato Pie/New Jersey Style", crust: "Thin", cheese: "Grated Romano", shape: "Square", pan: "Steel Rectangular Pan", additional_comments: "Cheese is optional"),
pizza12 = Pie.create(name: "Chicago Thin Crust", crust: "Thin", cheese: "Mozzarella", shape: "Round")
pizza13 = Pie.create(name: "White Clam Pie", crust: "Thin", shape: "Round", cheese: "Grated Romano", additional_comments: "Whole or Chopped clams, garlic, olive oil, and oregano")
