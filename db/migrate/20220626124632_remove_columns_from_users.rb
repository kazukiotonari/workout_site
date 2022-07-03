class RemoveColumnsFromUsers < ActiveRecord::Migration[5.2]
  def up
    remove_column :users, :postal_code
    remove_column :users, :address
    remove_column :users, :phone
  end
end
