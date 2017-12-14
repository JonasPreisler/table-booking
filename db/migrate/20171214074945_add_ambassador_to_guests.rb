class AddAmbassadorToGuests < ActiveRecord::Migration[5.0]
  def change
    add_column :guests, :ambassador, :string
  end
end
