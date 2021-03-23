class CreateEnemies < ActiveRecord::Migration[5.2]
  def change

    create_table :enemies do |t|
      t.string :type
      t.integer :attack
      t.integer :health
      t.integer :player_id
    end

    add_foreign_key :enemies, :players
  end
end
