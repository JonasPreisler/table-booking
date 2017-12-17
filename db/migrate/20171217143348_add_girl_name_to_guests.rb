class AddGirlNameToGuests < ActiveRecord::Migration[5.0]
  def change
    add_column :guests, :girl_name, :string
  end
end
