class CustomerDish < ApplicationRecord
    belongs_to :customer
    belongs_to :dish
end
