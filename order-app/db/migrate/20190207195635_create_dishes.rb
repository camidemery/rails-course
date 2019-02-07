class CreateDishes < ActiveRecord::Migration[5.2]
  def change
    create_table :dishes do |t|
      t.string :pasta
      t.string :sauce
      t.timestamps
    end
  end
end
