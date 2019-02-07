class Dish < ApplicationRecord
    has_many :customer_dishes
    has_many :customers, through: :customer_dishes 
end
