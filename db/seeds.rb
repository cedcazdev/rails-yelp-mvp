require 'faker'

puts 'Cleaning database...'
Restaurant.destroy_all

puts "Creating 10 records..."

10.times do
  restaurant = Restaurant.create(
    name: Faker::Restaurant.name,
    address: Faker::Address.street_address,
    phone_number: Faker::PhoneNumber.phone_number,
    category: %w(chinese italian japanese french belgian).sample,
    )
  3.times do
    restaurant.reviews.create(
      content: Faker::Restaurant.review,
      rating: (0..5).to_a.sample
      )
  end
end
