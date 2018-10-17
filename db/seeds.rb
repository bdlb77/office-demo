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

5.times do
	boolean = [true, false].shuffle.first
	flat_type = ['2 Bedroom', 'Studio', '3 Bedroom'].shuffle.first
	Flat.create!(flat_type: flat_type, address: Faker::Address.full_address, availability: boolean, floor_number: rand(1..3), occupancy: rand(1..5), bedrooms: rand(1..3), bathrooms: rand(1..2), location: location )
end

puts "flats created"

6.times do 
	Tenant.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email:'steve@swbell.net', phone_number: Faker::PhoneNumber.cell_phone, username: Faker::Name.initials, birthday: '06.08.1993')
end
puts "tenants created"
7.times do
	number = rand(1..5)
	FlatContract.create!(flat: Flat.find(number), tenant: Tenant.find(number), start_date: Faker::Date.between(4.days.ago, 3.days.ago), end_date:Faker::Date.between(2.days.ago, Date.today), user: user )
end
puts "flat contracts created"