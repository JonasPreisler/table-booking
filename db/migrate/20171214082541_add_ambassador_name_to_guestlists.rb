class AddAmbassadorNameToGuestlists < ActiveRecord::Migration[5.0]
  def change
    add_column :guestlists, :ambassador_name, :string
  end
end
