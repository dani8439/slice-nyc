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
pizza10 = Pie.create(name: "Pizza Margherita", crust: "Thin", cheese: "Fresh Mozzarella", shape: "Round"),
pizza11 = Pie.create(name: "Italian Tomato Pie/New Jersey Style", crust: "Thin", cheese: "Grated Romano", shape: "Square", pan: "Steel Rectangular Pan", additional_comments: "Cheese is optional"),
pizza12 = Pie.create(name: "Chicago Thin Crust", crust: "Thin", cheese: "Mozzarella", shape: "Round"),
pizza13 = Pie.create(name: "White Clam Pie", crust: "Thin", shape: "Round", cheese: "Grated Romano", additional_comments: "Whole or Chopped clams, garlic, olive oil, and oregano"),



top1 = Topping.create(name: "Anchovies"),
top2 = Topping.create(name: "Artichoke"),
top3 = Topping.create(name: "Arugula"),
top4 = Topping.create(name: "Bacon"),
top5 = Topping.create(name: "Banana Peppers"),
top6 = Topping.create(name: "BBQ Chicken"),
top7 = Topping.create(name: "BBQ Sauce"),
top8 = Topping.create(name: "Broccoli"),
top9 = Topping.create(name: "Broccoli Rabe"),
top10 = Topping.create(name: "Buffalo Mozzarella"),
top11 = Topping.create(name: "Burrata Cheese"),
top12 = Topping.create(name: "Butter"),
top13 = Topping.create(name: "Black Pepper"),
top14 = Topping.create(name: "Capers"),
top15 = Topping.create(name: "Chili Flakes"),
top16 = Topping.create(name: "Chili Peppers"),
top17 = Topping.create(name: "Chopped Clams"),
top18 = Topping.create(name: "Cremini Mushrooms"),
top19 = Topping.create(name: "Egg"),
top20 = Topping.create(name: "Eggplant"),
top21 = Topping.create(name: "Extra Cheese"),
top22 = Topping.create(name: "Extra Sauce"),
top23 = Topping.create(name: "Extra Virgin Olive Oil"),
top24 = Topping.create(name: "Feta Cheese"),
top25 = Topping.create(name: "Fior di Latte"),
top26 = Topping.create(name: "Fresh Basil"),
top27 = Topping.create(name: "Fresh Chilies"),
top28 = Topping.create(name: "Fresh Clams"),
top29 = Topping.create(name: "Fresh Garlic"),
top30 = Topping.create(name: "Fresh Mozzarella"),
top31 = Topping.create(name: "Gaeta Olives"),
top32 = Topping.create(name: "Gorgonzola"),
top33 = Topping.create(name: "Green Bell Peppers"),
top34 = Topping.create(name: "Green Olives"),
top35 = Topping.create(name: "Ham"),
top36 = Topping.create(name: "Hot Cherry Peppers"),
top37 = Topping.create(name: "Jalapeño"),
top38 = Topping.create(name: "Kalamatta Olives"),
top39 = Topping.create(name: "Kale"),
top40 = Topping.create(name: "Lemon"),
top41 = Topping.create(name: "Meatballs"),
top42 = Topping.create(name: "Mushrooms"),
top43 = Topping.create(name: "Olives"),
top44 = Topping.create(name: "Onions"),
top45 = Topping.create(name: "Oregano"),
top46 = Topping.create(name: "Parmigiana"),
top47 = Topping.create(name: "Parsley"),
top48 = Topping.create(name: "Pear Tomatoes"),
top49 = Topping.create(name: "Pecorino"),
top50 = Topping.create(name: "Pepperoncini")
top51 = Topping.create(name: "Pepperoni"),
top52 = Topping.create(name: "Peppers"),
top53 = Topping.create(name: "Pesto"),
top54 = Topping.create(name: "Pineapple"),
top55 = Topping.create(name: "Potatoes"),
top56 = Topping.create(name: "Porcini Mushrooms"),
top57 = Topping.create(name: "Primo sale"),
top58 = Topping.create(name: "Red Onion"),
top59 = Topping.create(name: "Ricotta"),
top60 = Topping.create(name: "Roasted Garlic"),
top61 = Topping.create(name: "Salt Cured Olives"),
top62 = Topping.create(name: "Sausage"),
top63 = Topping.create(name: "Sautéed Garlic Spinach"),
top64 = Topping.create(name: "Sautéed Spinach"),
top65 = Topping.create(name: "Scallions"),
top66 = Topping.create(name: "Sea Salt"),
top67 = Topping.create(name: "Smoked Pancetta"),
top68 = Topping.create(name: "Soppressata"),
top69 = Topping.create(name: "Speck"),
top70 = Topping.create(name: "Spicy Salami"),
top71 = Topping.create(name: "Spinach"),
top72 = Topping.create(name: "Sun-Dried Tomatoes"),
top73 = Topping.create(name: "Sweet Roasted Red Peppers"),
top74 = Topping.create(name: "Sweet Sausage"),
top75 = Topping.create(name: "Thyme"),
top76 = Topping.create(name: "Tomato"),
top77 = Topping.create(name: "Truffle Pate"),
top78 = Topping.create(name: "White Anchovies"),
