# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Category.destroy_all
DifficultyLevel.destroy_all

Category.create(title: "String")
Category.create(title: "Array")
Category.create(title: "Linked List")
Category.create(title: "Binary Tree")

DifficultyLevel.create(title: "Easy")
DifficultyLevel.create(title: "Medium")
DifficultyLevel.create(title: "Hard")

puts "data has been seeded! 🍃"