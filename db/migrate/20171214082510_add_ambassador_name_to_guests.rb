class AddAmbassadorNameToGuests < ActiveRecord::Migration[5.0]
  def change
    add_column :guests, :ambassador_name, :string
  end
end
