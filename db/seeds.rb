# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

List.destroy_all

user_1 = User.create!(email: "thisemail@site.com", password: "123456")

list_1 = List.create!(name:  "Christmas Dinner")
list_2 = List.create!(name:  "New Year's Eve")

ingredient_1 = List.create!(name:  "Chicken", bought: false, user: user_1 )
ingredient_2 = List.create!(name:  "Sauce", bought: false, user: user_1 )
