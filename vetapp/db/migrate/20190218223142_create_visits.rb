class CreateVisits < ActiveRecord::Migration[5.2]
  def change
    create_table :visits do |t|
      t.float :weight
      t.string :vet
      t.integer :animal_id
      t.integer :user_id
      t.timestamps
    end
  end
end
