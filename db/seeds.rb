# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Category.destroy_all
DifficultyLevel.destroy_all
Algorithm.destroy_all

cat_string = Category.create(title: "String")
cat_array = Category.create(title: "Array")
cat_linked_list = Category.create(title: "Linked List")
cat_binary_tree = Category.create(title: "Binary Tree")

lvl1 = DifficultyLevel.create(title: "Easy")
lvl2 = DifficultyLevel.create(title: "Medium")
lvl3 = DifficultyLevel.create(title: "Hard")

Algorithm.create(title: "Test", description: "This is a test.", category_id: cat_string.id, difficulty_level_id: lvl1.id)

puts "data has been seeded! 🍃"

rails generate migration AddUserRefToProducts user:references