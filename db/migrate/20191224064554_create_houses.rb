class CreateHouses < ActiveRecord::Migration[5.2]
  def change
    create_table :houses do |t|
      t.string :name
      t.float :price
      t.string :address
      t.float :old
      t.text :remarks

      t.timestamps
    end
  end
end
