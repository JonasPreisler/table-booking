class AddTablebookingIdToGuests < ActiveRecord::Migration[5.0]
  def change
    add_column :guests, :tablebooking_id, :integer
  end
end
