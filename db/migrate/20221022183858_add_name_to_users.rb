class AddNameToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :Users, :string
    add_column :users, :name, :string
  end
end
