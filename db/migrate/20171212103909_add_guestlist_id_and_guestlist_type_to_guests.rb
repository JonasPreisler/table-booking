class AddGuestlistIdAndGuestlistTypeToGuests < ActiveRecord::Migration[5.0]
  def change
    add_column :guests, :guestlist_id, :integer
    add_column :guests, :guestlist_type, :string
  end
end
