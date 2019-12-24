class CreateDistances < ActiveRecord::Migration[5.2]
  def change
    create_table :distances do |t|
      t.string :route
      t.string :station
      t.float :foot

      t.timestamps
    end
  end
end
