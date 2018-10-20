
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#  Creation of user
require 'faker'
FlatContract.delete_all
Tenant.delete_all
Flat.delete_all
Location.delete_all
User.delete_all


user = User.create!(email: 'bdlb@utexas.edu', password:'123456', admin: true)
user2 = User.create!(email:'steve@hotmail.com', password: '123456', admin: false)

location = Location.create!(name: 'La Défense', city: 'Paris', open: true)
location2 = Location.create!(name: "L'Auberge", city: 'Paris', open: true)


	flat_type = ['2-Bedroom', 'Studio', '3-Bedroom'].shuffle.first

	Flat.create!(flat_type: "2-Bedroom", address: Faker::Address.full_address, availability: true, floor_number: 3, occupancy: 2, bedrooms: 2, bathrooms: 1, location: location, flat_number: "301" )
	Flat.create!(flat_type: "2-Bedroom", address: Faker::Address.full_address, availability: true, floor_number: 1, occupancy: 4, bedrooms: 2, bathrooms: 1, location: location, flat_number: "101")
	Flat.create!(flat_type: "Studio", address: Faker::Address.full_address, availability: true, floor_number: 1, occupancy: 1, bedrooms: 1, bathrooms: 1, location: location, flat_number: "110" )
	Flat.create!(flat_type: "Studio", address: Faker::Address.full_address, availability: true, floor_number: 1, occupancy: 1, bedrooms: 1, bathrooms: 2, location: location2, flat_number: "102" )
	Flat.create!(flat_type: "3-Bedroom", address: Faker::Address.full_address, availability: true, floor_number: 2, occupancy: 3, bedrooms: 3, bathrooms: 2, location: location2, flat_number: "203" )
	Flat.create!(flat_type: "3-Bedroom", address: Faker::Address.full_address, availability: true, floor_number: 2, occupancy: 5, bedrooms: 3, bathrooms: 2, location: location2, flat_number:"215" )
	Flat.create!(flat_type: "3-Bedroom", address: Faker::Address.full_address, availability: true, floor_number: 2, occupancy: 4, bedrooms: 3, bathrooms: 2, location: location2, flat_number:"220" )

puts "flats created"

10.times do 
	Tenant.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email:'example@gmail.com', phone: Faker::PhoneNumber.cell_phone, username: Faker::Name.initials, birthday: '06.08.1993')
end
puts "tenants created"
10.times do
	number = rand(1..7)
	FlatContract.create!(flat: Flat.find(number), tenant: Tenant.find(number), start_date: Faker::Date.between(4.days.ago, 3.days.ago), end_date:Faker::Date.between(2.days.ago, Date.today), user: user )
end
puts "flat contracts created"