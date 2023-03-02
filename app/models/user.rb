class User < ActiveRecord::Base
    has_many :cart
    has_many :product, through: :cart
  end