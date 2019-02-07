class Customer < ApplicationRecord
    has_many :customer_dishes
    has_many :dishes, through: :customer_dishes 
end
