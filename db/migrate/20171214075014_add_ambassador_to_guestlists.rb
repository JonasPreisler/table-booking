class AddAmbassadorToGuestlists < ActiveRecord::Migration[5.0]
  def change
    add_column :guestlists, :ambassador, :string
  end
end
