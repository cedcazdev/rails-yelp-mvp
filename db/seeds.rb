require 'faker'

puts 'Delete all restaurants...'
Restaurant.destroy_all

puts 'Creating 10 fake restaurants...'

10.times do
  Restaurant.create!(
    name: Faker::Restaurant.name,
    adress: Faker::Address.street_address,
    phone_number: Faker::PhoneNumber.cell_phone_in_e164,
    category: Faker::Restaurant.type
  )
end

puts 'Finished!'
# Faker::Restaurant.review
