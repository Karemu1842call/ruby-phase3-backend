puts "🌱 Seeding spices..."

# Seed your database here
products = Product.create([{ productName: Faker::Vehicle.manufacture, price: 2000000, productImage: "https://beemashine.com/wp-content/uploads/2021/08/BEST-SUV-KENYA.jpeg" }]),
products = Product.create([{ productName: Faker::Vehicle.manufacture, price: 2000000, productImage: "https://www.cnet.com/a/img/resize/ab6a393139e51746d7d2280434c9f814b7dc96bc/hub/2021/04/19/31132fa6-2622-4ebe-995a-f52e20b7b218/2022-hyundai-tucson-limited-awd-ogi.jpg?auto=webp" }]),
products = Product.create([{ productName: Faker::Vehicle.manufacture, price: 2000000, productImage: "https://www.budget.com/content/dam/cars/xl/2021/cadillac/2021-cadillac-escalade-esv-600-sport-suv-black_passenger.png" }]),
products = Product.create([{ productName: Faker::Vehicle.manufacture, price: 2000000, productImage: "https://inv.assets.sincrod.com/2/4/5/31802092542.jpg" }]),
cart = Cart.create([{ quantity: 3 }]),
cart = Cart.create([{ quantity: 4 }]),
cart = Cart.create([{ quantity: 12 }]),
user = User.create([{ name: Faker::Name.name_with_middle, email: Faker::Internet.email, tel_no: Faker::PhoneNumber.phone_number_with_country_code }])
user = User.create([{ name: Faker::Name.name_with_middle, email: Faker::Internet.email, tel_no: Faker::PhoneNumber.phone_number_with_country_code }])
user = User.create([{ name: Faker::Name.name_with_middle, email: Faker::Internet.email, tel_no: Faker::PhoneNumber.phone_number_with_country_code }])

puts "✅ Done seeding!"
