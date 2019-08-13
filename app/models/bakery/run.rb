require "pry"

require_relative "bakery.rb"
require_relative "dessert.rb"
require_relative "ingredient.rb"




bakery1 = Bakery.new(name: "bakery 1")
bakery2 = Bakery.new(name: "bakery 2")
bakery3 = Bakery.new(name: "bakery 3")

cake = Dessert.new(name: "cake", bakery: bakery1)
cupcake = Dessert.new(name: "cupcake", bakery: bakery1)
bread = Dessert.new(name: "bread", bakery: bakery3)

flourforcake = Ingredient.new(name: "flour", dessert: cake, calorie_count: 100)
flourforbread = Ingredient.new(name: "flour", dessert: bread, calorie_count: 100)
sugarforcake = Ingredient.new(name: "sugar", dessert: cake, calorie_count: 200)
egg = Ingredient.new(name: "egg", dessert: bread, calorie_count: 300)
sugarforcupcake = Ingredient.new(name: "sugar", dessert: cupcake, calorie_count: 200)



binding.pry
puts "finished testing"