class AddGuestlistToGuests < ActiveRecord::Migration[5.0]
  def change
    add_column :guests, :guestlist, :integer
  end
end
