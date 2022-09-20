# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Category.destroy_all
Difficulty.destroy_all
Algorithm.destroy_all

cat_string = Category.create(name: "String")
cat_array = Category.create(name: "Array")
cat_linked_list = Category.create(name: "Linked List")
cat_binary_tree = Category.create(name: "Binary Tree")

lvl1 = Difficulty.create(name: "Easy")
lvl2 = Difficulty.create(name: "Medium")
lvl3 = Difficulty.create(name: "Hard")

algo1 = Algorithm.create(name: "Test", description: "This is a test.", category_id: cat_string.id, difficulty_id: lvl1.id)

# Solution.create(explanation: "This is a test.", time_complexity: "O(n)", space_complexity: "O(n)", algorithm_id: algo1.id)

puts "data has been seeded! 🍃"