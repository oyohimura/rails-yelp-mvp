# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# at the beginning, clear the DB
puts "Clearing DB..."
Restaurant.destroy_all

puts "Creating valid test restaurants..."
Restaurant.create(
  name: 'Yen Feng',
  address: 'ching chong street',
  category: 'chinese'
)

Restaurant.create(
  name: 'Le beau canevas',
  address: 'Paris, faut pas déconner',
  category: 'french'
)

Restaurant.create(
  name: 'Gaufrattitude',
  address: 'Charleroi, rue du Gluten',
  category: 'belgian'
)

Restaurant.create(
  name: 'le ramen levant',
  address: 'kyoto, temple du soleil',
  category: 'japanese'
)

Restaurant.create(
  name: 'mamma la pizza',
  address: 'napoli',
  category: 'italian'
)
