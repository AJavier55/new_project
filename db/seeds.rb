# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require "faker"

Restaurant.destroy_all
Wholesaler.destroy_all
Product.destroy_all 
Review.destroy_all 
WholesalerProduct.destroy_all 


60.times do 
    Restaurant.create(name: Faker::Restaurant.name, owner: Faker::Name.name, location: Faker::Address.full_address, cuisine: Faker::Restaurant.type)
end 

100.times do 
    Wholesaler.create(name: Faker::Company.name, location: Faker::Address.full_address, occupation: Faker::Food.ingredient)
end

50.times do
    Review.create!(restaurant_id: Restaurant.all.sample.id, wholesaler_id: Wholesaler.all.sample.id, star_rating: rand(1..5), written_review: Faker::Restaurant.review)
end

70.times do 
    Product.create(name: Faker::Food.ingredient)
end

80.times do
    WholesalerProduct.create(product_id: Product.all.sample.id, wholesaler_id: Wholesaler.all.sample.id)
end