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

Category.create!(title: 'Starter')
Category.create!(title: 'Fish')
Category.create!(title: 'Main')
Category.create!(title: 'Dessert')

Recipe.create!(title: 'Tomato Soup', description: 'Hearty soup for winter', instructions: 'Make Tomato Soup')
Recipe.create!(title: 'Steak', description: 'How to perfectly cook a steak', instructions: 'Instructions for cooking steak')

Ingredient.create!(title: 'Cream', kind: 'Dairy')
Ingredient.create!(title: 'Tomato', kind: 'Fruit')
Ingredient.create!(title: 'Steak', kind: 'Meat')