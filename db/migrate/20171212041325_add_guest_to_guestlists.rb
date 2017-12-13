class AddGuestToGuestlists < ActiveRecord::Migration[5.0]
  def change
    add_column :guestlists, :guest, :string
  end
end
