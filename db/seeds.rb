# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "Cleaning database..."
Flat.destroy_all

puts "Creating flats..."
Flat.create!(
  name: 'Light & Spacious Garden Flat London',
  address: '10 Clifton Gardens London W9 1DT',
  description: 'A lovely summer feel for this spacious garden flat. Two double bedrooms, open plan living area, large kitchen and a beautiful conservatory',
  price_per_night: 75,
  number_of_guests: 3
)
Flat.create!(
  name: 'Flat in Machester',
  address: '13 Bakerstreet London W4 2DT',
  description: 'a flat from M.Watsons',
  price_per_night: 45,
  number_of_guests: 6
)
Flat.create!(
  name: 'La maison',
  address: '5 Hello world W9 1DT',
  description: 'a house that is fancy because of the French culture',
  price_per_night: 100,
  number_of_guests: 2
)
Flat.create!(
  name: 'Flat Berlin',
  address: '30 charlottenburg',
  description: 'near a pizza place',
  price_per_night: 30,
  number_of_guests: 8
)
puts "Finished!"
