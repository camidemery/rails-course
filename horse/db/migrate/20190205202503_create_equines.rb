class CreateEquines < ActiveRecord::Migration[5.2]
  def change
    create_table :equines do |t|
      t.string :name
      t.string :picture
      t.timestamps
    end
  end
end
