class AddAmbassadorIdToGuestlists < ActiveRecord::Migration[5.0]
  def change
    add_column :guestlists, :ambassador_id, :integer
  end
end
