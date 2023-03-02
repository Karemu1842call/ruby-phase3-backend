```console
$ bundle install
```

to install the gems.

# create migrations for:

```console
$  bundle exec rake db:create_migration NAME=create_carts

```

```console
$  bundle exec rake db:create_migration NAME=create_users

```

```console
$  bundle exec rake db:create_migration NAME=create_products

```

# Migrate Data

<li> carts</li>

```rb

    create_table :carts do |t|
      t.integer :quantity
    end
```

<li> User</li>

```rb

    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :tel_no
    end

```

<li> Product</li>

```rb
    create_table :products do |t|
      t.string :productName
      t.string :price
      t.integer :productImage
    end

```

# Then create Models

<li> Cart.rb</li>

```rb
class Cart < ActiveRecord::Base
    belongs_to :user
    belongs_to :product
end
```

<li> User</li>

```rb
class User < ActiveRecord::Base
  has_many :cart
  has_many :product, through: :cart
end
```

<li> Product</li>

```rb
class Product <ActiveRecord::Base
    has_many :cart
    has_many :user, through: :cart
end
```

#

# Seed Data

```rb
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

```

# migrate and seed the data

```console
$  bundle exec rake db:migrate db:seed
```

# start your server with:

```console
$ bundle exec rake server
```

This will run your server on port
[http://localhost:9292](http://localhost:9292).
