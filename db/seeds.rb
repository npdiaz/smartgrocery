# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


list_1 = List.create!(name:  "Christmas Dinner")
list_2 = List.create!(name:  "New Year's Eve")

buyer_1 = Buyer.create!(name: "Mom")

ingredient_1 = Ingredient.create!(name:  "Chicken", bought: false, list_id: 1, buyer_id: 1)
