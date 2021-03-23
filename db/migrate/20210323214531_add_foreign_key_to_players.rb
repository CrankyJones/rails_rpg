class AddForeignKeyToPlayers < ActiveRecord::Migration[5.2]
  def change
    add_column :players, :location_id, :integer
    add_foreign_key :players, :locations
  end
end
