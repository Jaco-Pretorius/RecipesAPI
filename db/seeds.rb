# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

bob = User.create(name: 'Bob', email: 'bob@example.com', password: 'password', password_confirmation: 'password')
steve = User.create(name: 'Steve', email: 'steve@example.com', password: 'password', password_confirmation: 'password')
dave = User.create(name: 'Dave', email: 'dave@example.com', password: 'password', password_confirmation: 'password')

appetizer = Category.create(name: 'Appetizer')
breakfast = Category.create(name: 'Breakfast & Brunch')
chicken = Category.create(name: 'Chicken')
desserts = Category.create(name: 'Desserts')
healthy = Category.create(name: 'Healthy')
main = Category.create(name: 'Main Dish')
pasta = Category.create(name: 'Pasta')
salad = Category.create(name: 'Salad')
slow_cooker = Category.create(name: 'Slow Cooker')
vegetarian = Category.create(name: 'Vegetarian')

spaghetti = Recipe.create(name: 'Spaghetti Bolognaise', instructions: 'Cook bolognaise.  Add pasta.  Mix.  Serve.', user: bob)
spaghetti.categories << main
spaghetti.categories << pasta

chicken_cordon_bleu = Recipe.create(name: 'Chicken Cordon Bleu', instructions: 'Cook chicken.  Add cordon.  Stir in bleu.  Bake and serve.', user: bob)
chicken_cordon_bleu.categories << main
chicken_cordon_bleu.categories << chicken

spinach_salad = Recipe.create(name: 'Spinach Salad', instructions: 'Put lots of spinach in a bowl.  Add salad dressing (optional).', user: steve)
spinach_salad.categories << appetizer
spinach_salad.categories << healthy
spinach_salad.categories << vegetarian

chocolate_cake = Recipe.create(name: 'Chocolate Cake', instructions: 'Open chocolate cake packet.  Follow instructions on packet.  Add candles (optional).', user: steve)
chocolate_cake.categories << desserts

sushi = Recipe.create(name: 'Sushi', instructions: 'Boil rice.  Add fish, cucumber, seaweed (all optional).  Roll, cut and serve.', user: dave)
sushi.categories << healthy
sushi.categories << appetizer