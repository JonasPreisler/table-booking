class AddGuestIdToGuestlists < ActiveRecord::Migration[5.0]
  def change
    add_column :guestlists, :guest_id, :integer
  end
end
