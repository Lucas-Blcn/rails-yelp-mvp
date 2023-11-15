# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ['Action', 'Comedy', 'Drama', 'Horror'].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
puts 'FirstOfAll : Cleaning database...'
Restaurant.destroy_all

puts 'SecondOfAll : Creating restaurants...'
dishoom = {
  name: 'Dishoom',
  address: '7 Boundary St, London E2 7JE',
  phone_number: '0784858682',
  category: 'chinese'
}

bimbimboop = {
  name: 'BimBimBoop',
  address: '8 Boundary St, London E2 7JE',
  phone_number: '0484808682',
  category: 'italian'
}

la_bonne_franquette = {
  name: 'la_bonne_franquette',
  address: '9 rue parmentier, Paris',
  phone_number: '0684808682',
  category:'french'
}

pizza_east = {
  name: 'Pizza East',
  address: '56A Shoreditch High St, London E1 6PQ',
  phone_number: '0685208686',
  category: 'italian'
}

sushimama = {
  name: 'sushimama',
  address: '18 rue saint maur, Paris',
  phone_number: '0885208686',
  category: 'japanese'
}

[dishoom, bimbimboop, la_bonne_franquette, pizza_east, sushimama].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts 'ThirdOfAll : Created #{restaurant.name}'
end
puts 'Finished!'
