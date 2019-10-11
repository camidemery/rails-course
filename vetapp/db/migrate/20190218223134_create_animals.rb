class CreateAnimals < ActiveRecord::Migration[5.2]
  def change
    create_table :animals do |t|
      t.string :first_name 
      t.string :last_name
      t.string :sex
      t.string :picture
      t.timestamps
    end
  end
end
