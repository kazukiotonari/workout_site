class AddColumnsToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :weight, :float
    add_column :users, :nickname, :string
    add_column :users, :fat_percentage, :float
    add_column :users, :height, :float
  end
end
