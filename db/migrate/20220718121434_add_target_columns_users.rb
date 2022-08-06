class AddTargetColumnsUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users,:target_weight, :float
    add_column :users,:target_musclemass,:float
    add_column :users,:target_fat_percentage,:float
    add_column :users,:musclemass,:float
  end
end
