class CreateCustomerDishes < ActiveRecord::Migration[5.2]
  def change
    create_table :customer_dishes do |t|
      t.integer :customer_id
      t.integer :dish_id
      t.timestamps
    end
  end
end
