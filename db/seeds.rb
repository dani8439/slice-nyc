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


pizza1 = Pizza.create(name: "Neopolitan", crust: "Thin", cheese: "Mozzarella"),
pizza2 = Pizza.create(name: "Chicago-Style/Deep Dish", crust: "Deep-dish", cheese: "Mozzarella"),
pizza3 = Pizza.create(name: "St. Louis Style", crust: "Cracker", cheese: "Provolone"),
pizza4 = Pizza.create(name: "California/Gourmet Style", crust: "Thin", cheese: "Optional"),
pizza5 = Pizza.create(name: "Greek Style", crust: "Somewhere between crunchy and thicker Sicilian Cousin", cheese: "Mozzarella"),
pizza6 = Pizza.create(name: "Sicilian Style", crust: "Thick", cheese: "Mozzarella"),
pizza7 = Pizza.create(name: "Detroit Style", crust: "Deep-Dish", cheese: "Mozzarella"),
pizza8 = Pizza.create(name: "Grandma Pie", crust: "Thin", cheese: "Mozzarella"),
pizza9 = Pizza.create(name: "NY Style", crust: "Thin", cheese: "Mozzarella"),
pizza10 = Pizza.create(name: "Pizza Margherita", crust: "Thin", cheese: "Mozzarella"),
pizza11 = Pizza.create(name: "Italian Tomato Pie/New Jersey Style", crust: "Thin", cheese: "Mozzarella"),
pizza12 = Pizza.create(name: "Chicago Thin Crust", crust: "Thin", cheese: "Mozzarella")
