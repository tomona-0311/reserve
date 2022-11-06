class CreateRooms < ActiveRecord::Migration[7.0]
  def change
    create_table :rooms do |t|
      t.string :name
      t.text :address
      t.integer :price
      t.string :image

      t.text :content
      t.integer :user_id

      t.timestamps
    end
  end
end
