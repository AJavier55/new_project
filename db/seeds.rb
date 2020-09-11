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


# 20.times do 
#     Restaurant.create(name: Faker::Restaurant.unique.name, owner: Faker::Name.name, location: Faker::Address.full_address, cuisine: Faker::Restaurant.type, password: "pass1234")
# end 

# # 50.times do
# #     Review.create(restaurant: Restaurant.all.sample.id, wholesaler: Wholesaler.all.sample.id, star_rating: rand(1..5), written_review: Faker::Restaurant.review)
# # end

# 70.times do 
#     Product.create(name: Faker::Food.ingredient)
# end

# 80.times do
#     WholesalerProduct.create(product_id: Product.all.sample.id, wholesaler_id: Wholesaler.all.sample.id)
# end

Wholesaler.create(name: "Brenner & Sons" , location: Faker::Address.unique.full_address, occupation: "Butcher", img_url: "https://images.squarespace-cdn.com/content/v1/582619c303596e8d06a16a3e/1484509340367-1OS3RP8T756V8GAGWYDU/ke17ZwdGBToddI8pDm48kOVcjuUL21J4oigwFlCHDM4UqsxRUqqbr1mOJYKfIPR7LoDQ9mXPOjoJoqy81S2I8N_N4V1vUb5AoIIIbLZhVYxCRW4BPu10St3TBAUQYVKcuHgxV5AklEi2TK5rxUT1wWO8H5uBxFXe5ei4q4vCsjy80piU39IriItUyksJW2Se/Meat-1.jpg?format=1500w")
Wholesaler.create(name: "Barry's Berry Farm" , location: Faker::Address.unique.full_address, occupation: "Fruit Vendor", img_url: "https://img.freepik.com/free-photo/harvesting-strawberries-basket-strawberries-with-green-leaves-wicker-basket_87555-2059.jpg?size=626&ext=jpg")
Wholesaler.create(name: "Cornelius St. Milks" , location: Faker::Address.unique.full_address, occupation: "Dairy", img_url: "https://cdn.hipwallpaper.com/i/9/6/GQIqVm.jpg")
Wholesaler.create(name: "Eggsellent Eggs" , location: Faker::Address.unique.full_address, occupation: "Hatchery", img_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSwZd_BciNYZL2HcpyvAB9EuNsXuWhOnob2tuI61iE3jw&usqp=CAU&ec=45699843")
Wholesaler.create(name: "Appletree Grove" , location: Faker::Address.unique.full_address, occupation: "Orchard" , img_url: "https://d1b2lnesusyixt.cloudfront.net/wp-content/uploads/sites/49/2018/10/15171741/iStock-920396082.jpg" )
Wholesaler.create(name: "Mario Sanchez, Inc." , location: Faker::Address.unique.full_address, occupation: "Fisherman" , img_url: "https://www.rvusa.com/blog/wp-content/uploads/2019/04/iStock-942157916.jpg")
Wholesaler.create(name: "Campbell Farms"  , location: Faker::Address.unique.full_address, occupation: "Gourd Guy", img_url: "https://images-na.ssl-images-amazon.com/images/I/61Ub4XCsWdL._AC_SL1008_.jpg")
Wholesaler.create(name: "Jack's Beanstalks" , location: Faker::Address.unique.full_address, occupation: "Legume Specialist", img_url: "https://gov.capital/wp-content/uploads/2018/06/sustainability.jpg")
Wholesaler.create(name: "Leaf City" , location:Faker::Address.unique.full_address,  occupation: "Vegetable Purveyor", img_url: "https://www.antonio-carluccio.com/wp-content/uploads/2020/03/organic.jpg")
Wholesaler.create(name: "Doughy Dough" , location: Faker::Address.unique.full_address, occupation: "Breads", img_url: "https://hudsonbread.com/wp-content/uploads/2020/07/Hudson-Bread-Wholesale.jpg")
Wholesaler.create(name: "Turkish Cinnamon & Spice" , location: Faker::Address.unique.full_address, occupation: "Spices", img_url: "https://babluboy.github.io/spicefarm/images/home_page_banner.jpg")
Wholesaler.create(name: "Antonthy's Greens" , location: Faker::Address.unique.full_address, occupation: "Produce", img_url: "https://images.squarespace-cdn.com/content/v1/5888d01fb8a79b5efafd6e84/1487998947304-D30PX5UN8WV1GC0SM53Z/ke17ZwdGBToddI8pDm48kDu-OvKe9-yMBj32JSWknrt7gQa3H78H3Y0txjaiv_0fDoOvxcdMmMKkDsyUqMSsMWxHk725yiiHCCLfrh8O1z5QPOohDIaIeljMHgDF5CVlOqpeNLcJ80NK65_fV7S1UZNNUmsixw3l8iPy3vgDTPMwfMBbaTJA8uE3oWp8JUwqzkQXHaRS3Yhvu0vV6Jt1AA/farm-to-table-background.jpg?format=2500w")
Wholesaler.create(name: "Oranges R' Us" , location: Faker::Address.unique.full_address, occupation: "Citrus", img_url: "https://images-na.ssl-images-amazon.com/images/I/71H3zZbHH0L._AC_SL1134_.jpg")
Wholesaler.create(name: "Barley Bros" , location: Faker::Address.unique.full_address, occupation: "Grains", img_url: "https://i.pinimg.com/originals/c7/c5/1c/c7c51cf15e19716ef2454d8b3bed826e.jpg")
