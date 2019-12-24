class AddHouseIdToDistances < ActiveRecord::Migration[5.2]
  def change
    add_reference :distances, :house, foreign_key: true
  end
end
