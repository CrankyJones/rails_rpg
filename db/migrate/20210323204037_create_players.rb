class CreatePlayers < ActiveRecord::Migration[5.2]
  def change

    create_table :players do |t|
      t.string :role
      t.integer :level
      t.integer :attack
      t.integer :health
      t.integer :user_id
    end

    add_foreign_key :players, :users
  end
end
