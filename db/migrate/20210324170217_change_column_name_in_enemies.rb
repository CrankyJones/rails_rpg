class ChangeColumnNameInEnemies < ActiveRecord::Migration[5.2]
  def change
    rename_column :enemies, :type, :monster
  end
end
