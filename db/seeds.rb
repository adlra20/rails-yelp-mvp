require 'faker'

RESTAURANTS = %w(chinese italian japanese french belgian)
puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
5.times do 
    restaurant = Restaurant.create!(
        name: Faker::Restaurant.name,
        address: Faker::Address.full_address,
        phone_number: Faker::PhoneNumber.cell_phone,
        category: RESTAURANTS.sample
    )
end 
puts "Finished!"