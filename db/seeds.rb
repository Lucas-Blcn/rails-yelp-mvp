# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ['Action', 'Comedy', 'Drama', 'Horror'].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

require 'faker'
# Pour éviter qu'on ne recré les mêmes
puts 'FirstOfAll : Cleaning database...'
Restaurant.destroy_all

puts 'SecondOfAll : Creating restaurants...'

10.times do
  name = Faker::Restaurant.name
  address = Faker::Address.full_address
  phone_number = Faker::PhoneNumber.phone_number
  category = ["chinese", "italian", "japanese", "french", "belgian"].sample
  Restaurant.create(name: name, address: address, phone_number: phone_number, category: category)
end

10.times do
  name = Faker::Restaurant.name
  address = Faker::Address.full_address
  phone_number = Faker::PhoneNumber.phone_number
  category = ["chinese", "italian", "japanese", "french", "belgian"].sample
  Restaurant.create(name: name, address: address, phone_number: phone_number, category: category)
end

10.times do
  content = Faker::Lorem.paragraph(sentence_count: 3)
  rating = Faker::Number.between(from: 1, to: 5)
  restaurant_id = Faker::Number.between(from: 1, to: 10)

# dishoom = {
#   name: 'Dishoom',
#   address: '7 Boundary St, London E2 7JE',
#   phone_number: '0784858682',
#   category: 'chinese'
# }

# bimbimboop = {
#   name: 'BimBimBoop',
#   address: '8 Boundary St, London E2 7JE',
#   phone_number: '0484808682',
#   category: 'italian'
# }

# la_bonne_franquette = {
#   name: 'la_bonne_franquette',
#   address: '9 rue parmentier, Paris',
#   phone_number: '0684808682',
#   category:'french'
# }

# pizza_east = {
#   name: 'Pizza East',
#   address: '56A Shoreditch High St, London E1 6PQ',
#   phone_number: '0685208686',
#   category: 'italian'
# }

# sushimama = {
#   name: 'sushimama',
#   address: '18 rue saint maur, Paris',
#   phone_number: '0885208686',
#   category: 'japanese'
# }

# [dishoom, bimbimboop, la_bonne_franquette, pizza_east, sushimama].each do |attributes|
#   restaurant = Restaurant.create!(attributes)
#   puts 'ThirdOfAll : Created #{restaurant.name}'
# end
puts 'Finished!'
