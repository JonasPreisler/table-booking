class AddFirstNameToGuests < ActiveRecord::Migration[5.0]
  def change
    add_column :guests, "first name", :string
  end
end
