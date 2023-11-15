# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

puts 'Wiping seeds'
Restaurant.destroy_all

puts 'Creating seeds'
restaurant_one = Restaurant.create(name: 'Surpriz', address: 'rue Oberkampf', phone_number: '01 23 45 78 90', category: 'belgian')
restaurant_two = Restaurant.create(name: 'Gare au Gorille', address: 'rue des Dames', phone_number: '01 46 27 30 36', category: 'french')
restaurant_three = Restaurant.create(name: 'Rosette', address: 'rue de Paris', phone_number: '06 26 54 02 20', category: 'japanese')
restaurant_four = Restaurant.create(name: 'Specimen', address: 'Paris 6', phone_number: '01 23 46 27 39', category: 'chinese')
restaurant_five = Restaurant.create(name: 'Pablo pizza', address: 'rue de Rome', phone_number: '01 53 21 79 85', category: 'italian')

puts 'Seeds created!'
