require 'faker'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
15.times do
Flat.create!(
  name: "Wonderful flat in " + Faker::Movies::StarWars.planet,
  address: Faker::Address.full_address,
  description: Faker::Movies::StarWars.wookiee_sentence,
  price_per_night: rand(50..150),
  number_of_guests:rand(2..15)
)
end
puts "#{Flat.count} created"
