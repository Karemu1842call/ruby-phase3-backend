class Product <ActiveRecord::Base
    has_many :cart
    has_many :user, through: :cart
end