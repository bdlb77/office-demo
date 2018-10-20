
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

flat1 = Flat.create!(flat_type: "2-Bedroom", address: Faker::Address.full_address, availability: true, floor_number: 3, occupancy: 2, bedrooms: 2, bathrooms: 1, location: location, flat_number: "301" )
flat2 = Flat.create!(flat_type: "2-Bedroom", address: Faker::Address.full_address, availability: true, floor_number: 1, occupancy: 4, bedrooms: 2, bathrooms: 1, location: location, flat_number: "101")
flat3 = Flat.create!(flat_type: "Studio", address: Faker::Address.full_address, availability: true, floor_number: 1, occupancy: 1, bedrooms: 1, bathrooms: 1, location: location, flat_number: "110" )
flat4 = Flat.create!(flat_type: "Studio", address: Faker::Address.full_address, availability: true, floor_number: 1, occupancy: 1, bedrooms: 1, bathrooms: 2, location: location2, flat_number: "102" )
flat5 = Flat.create!(flat_type: "3-Bedroom", address: Faker::Address.full_address, availability: true, floor_number: 2, occupancy: 3, bedrooms: 3, bathrooms: 2, location: location2, flat_number: "203" )
flat6 = Flat.create!(flat_type: "3-Bedroom", address: Faker::Address.full_address, availability: true, floor_number: 2, occupancy: 5, bedrooms: 3, bathrooms: 2, location: location2, flat_number:"215" )
flat7 = Flat.create!(flat_type: "3-Bedroom", address: Faker::Address.full_address, availability: true, floor_number: 2, occupancy: 4, bedrooms: 3, bathrooms: 2, location: location2, flat_number:"220" )

puts "flats created"

tenant1 = Tenant.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email:'example@gmail.com', phone: Faker::PhoneNumber.cell_phone, username: Faker::Name.initials, birthday: '06.08.1993')
tenant2 = Tenant.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email:'example@gmail.com', phone: Faker::PhoneNumber.cell_phone, username: Faker::Name.initials, birthday: '06.08.1993')
tenant3 = Tenant.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email:'example@gmail.com', phone: Faker::PhoneNumber.cell_phone, username: Faker::Name.initials, birthday: '06.08.1993')
tenant4 = Tenant.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email:'example@gmail.com', phone: Faker::PhoneNumber.cell_phone, username: Faker::Name.initials, birthday: '06.08.1993')
tenant5 = Tenant.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email:'example@gmail.com', phone: Faker::PhoneNumber.cell_phone, username: Faker::Name.initials, birthday: '06.08.1993')
tenant6 = Tenant.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email:'example@gmail.com', phone: Faker::PhoneNumber.cell_phone, username: Faker::Name.initials, birthday: '06.08.1993')
tenant7 = Tenant.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email:'example@gmail.com', phone: Faker::PhoneNumber.cell_phone, username: Faker::Name.initials, birthday: '06.08.1993')
tenant8 = Tenant.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email:'example@gmail.com', phone: Faker::PhoneNumber.cell_phone, username: Faker::Name.initials, birthday: '06.08.1993')
tenant9 = Tenant.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email:'example@gmail.com', phone: Faker::PhoneNumber.cell_phone, username: Faker::Name.initials, birthday: '06.08.1993')
tenant10 = Tenant.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email:'example@gmail.com', phone: Faker::PhoneNumber.cell_phone, username: Faker::Name.initials, birthday: '06.08.1993')
tenant11 = Tenant.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email:'example@gmail.com', phone: Faker::PhoneNumber.cell_phone, username: Faker::Name.initials, birthday: '06.08.1993')
puts "tenants created"
flat_c_1 = FlatContract.create!(flat: flat1, tenant: tenant1, start_date: Faker::Date.between(4.days.ago, 3.days.ago), end_date:Faker::Date.between(2.days.ago, 5.days.from_now), user: user )
flat_c_2 = FlatContract.create!(flat: flat1,  tenant: tenant2,start_date: Faker::Date.between(4.days.ago, 3.days.ago), end_date:Faker::Date.between(2.days.ago, 5.days.from_now), user: user )
flat_c_3 = FlatContract.create!(flat: flat2,  tenant: tenant3, start_date: Faker::Date.between(4.days.ago, 3.days.ago), end_date:Faker::Date.between(2.days.ago, 5.days.from_now), user: user )
flat_c_4 = FlatContract.create!(flat: flat3,  tenant: tenant4, start_date: Faker::Date.between(4.days.ago, 3.days.ago), end_date:Faker::Date.between(2.days.ago, 5.days.from_now), user: user )
flat_c_5 = FlatContract.create!(flat: flat4,  tenant: tenant5, start_date: Faker::Date.between(4.days.ago, 3.days.ago), end_date:Faker::Date.between(2.days.ago, 5.days.from_now), user: user )
flat_c_6 = FlatContract.create!(flat: flat5,  tenant: tenant6, start_date: Faker::Date.between(4.days.ago, 3.days.ago), end_date:Faker::Date.between(2.days.ago, 5.days.from_now), user: user )
flat_c_7 = FlatContract.create!(flat: flat5,  tenant: tenant7, start_date: Faker::Date.between(4.days.ago, 3.days.ago), end_date:Faker::Date.between(2.days.ago, 5.days.from_now), user: user )
flat_c_8 = FlatContract.create!(flat: flat5,  tenant: tenant8, start_date: Faker::Date.between(4.days.ago, 3.days.ago), end_date:Faker::Date.between(2.days.ago, 5.days.from_now), user: user )
flat_c_9 = FlatContract.create!(flat: flat6,  tenant: tenant9, start_date: Faker::Date.between(4.days.ago, 3.days.ago), end_date:Faker::Date.between(2.days.ago, 5.days.from_now), user: user )
flat_c_10 = FlatContract.create!(flat: flat7,  tenant: tenant10, start_date: Faker::Date.between(4.days.ago, 3.days.ago), end_date:Faker::Date.between(2.days.ago, 5.days.from_now), user: user )
flat_c_11 = FlatContract.create!(flat: flat7,  tenant: tenant11, start_date: Faker::Date.between(4.days.ago, 3.days.ago), end_date:Faker::Date.between(2.days.ago, 5.days.from_now), user: user )
puts "flat contracts created"


event = Event.create!(user: user, name: Faker::Esport.event, description: Faker::Esport.game, capacity: 4, address: Faker::Address.full_address, date: Faker::Date.forward(10))
event2 = Event.create!(user: user, name: Faker::Esport.event, description: Faker::Esport.game, capacity: 2, address: Faker::Address.full_address, date: Faker::Date.forward(5))
event3 = Event.create!(user: user, name: Faker::Esport.event, description: Faker::Esport.game, capacity: 3, address: Faker::Address.full_address, date: Faker::Date.forward(2))
event4 = Event.create!(user: user, name: Faker::Esport.event, description: Faker::Esport.game, capacity: 2, address: Faker::Address.full_address, date: Faker::Date.forward(7))
event5 = Event.create!(user: user, name: Faker::Esport.event, description: Faker::Esport.game, capacity: 3, address: Faker::Address.full_address, date: Faker::Date.backward(10))
event6 = Event.create!(user: user, name: Faker::Esport.event, description: Faker::Esport.game, capacity: 2, address: Faker::Address.full_address, date: Faker::Date.backward(2))

puts "events created"

event_booking = EventBooking.create!(tenant: tenant1, event: event)
event_booking = EventBooking.create!(tenant: tenant2, event: event)
event_booking = EventBooking.create!(tenant: tenant3, event: event2)
event_booking = EventBooking.create!(tenant: tenant4, event: event2)
event_booking = EventBooking.create!(tenant: tenant5, event: event3)
event_booking = EventBooking.create!(tenant: tenant6, event: event4)
event_booking = EventBooking.create!(tenant: tenant7, event: event5)
event_booking = EventBooking.create!(tenant: tenant8, event: event6)
event_booking = EventBooking.create!(tenant: tenant9, event: event6)
event_booking = EventBooking.create!(tenant: tenant1, event: event5)

puts "bookings created"
