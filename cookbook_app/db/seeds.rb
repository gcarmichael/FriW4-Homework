# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Category.delete_all
Recipe.delete_all
Ingredient.delete_all

Category.create!(type: 'Starter')
Category.create!(type: 'Fish')
Category.create!(type: 'Main')
Category.create!(type: 'Dessert')

Recipe.create!(title: 'Tomato Soup', description: 'Hearty soup for winter', instructions: 'Make Tomato Soup')
Recipe.create!(title: 'Steak', description: 'How to perfectly cook a steak', instructions: 'Instructions for cooking steak')

Ingredient.create!(title: 'Cream', type: 'Dairy')
Ingredient.create!(title: 'Tomato', type: 'Fruit')
Ingredient.create!(title: 'Steak', type: 'Meat')