class CreateTablebookings < ActiveRecord::Migration[5.0]
  def change
    create_table :tablebookings do |t|
      t.string :first_name
      t.string :last_name
      t.string :event_title
      t.integer :event_id
      t.integer :guest_id
      t.integer :guestlist_id

      t.timestamps
    end
  end
end
