class CreateReservations < ActiveRecord::Migration[7.0]
  def change
    create_table :reservations do |t|
      t.string :content
      t.integer :user_id
      t.integer :room_id
      t.integer :page_id
      t.timestamps
    end
  end
end
