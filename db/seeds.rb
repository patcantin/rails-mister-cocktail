# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "cleaning database"

Dose.destroy_all
Ingredient.destroy_all
Cocktail.destroy_all

puts "creating ingredients"

gin = Ingredient.create!(name: "gin")
to = Ingredient.create!(name: "tonic water")
Ingredient.create!(name: "cucumber")
Ingredient.create!(name: "mint")
Ingredient.create!(name: "lemon juice")
Ingredient.create!(name: "lemon slice")
ice = Ingredient.create!(name: "ice")
Ingredient.create!(name: "rhum")
Ingredient.create!(name: "tequila")
Ingredient.create!(name: "orange juice")
Ingredient.create!(name: "soda")
grape = Ingredient.create!(name: "grapefruit")

# Creating ingredients by parsing API
# require 'json'
# require 'open-uri'

# url = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
# user_serialized = open(url).read
# user = JSON.parse(user_serialized)

# arr = user["drinks"]
# arr.each do |i|
#   Ingredient.create(name: i["strIngredient1"])
# end

# puts "creating cocktails"

# ginto = Cocktail.create!(name: "gin tonic")

# puts "creating doses"

# Dose.create!(cocktail: ginto, ingredient: gin, description: "45ml (1 1/2 oz)")
# Dose.create!(cocktail: ginto, ingredient: to, description: "60 ml (2oz)")
# Dose.create!(cocktail: ginto, ingredient: grape, description: "1 slice")
# Dose.create!(cocktail: ginto, ingredient: ice, description: "3 or 4")

puts "finished ! you can play now."
