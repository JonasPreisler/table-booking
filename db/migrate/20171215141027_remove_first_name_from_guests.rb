class RemoveFirstNameFromGuests < ActiveRecord::Migration[5.0]
  def change
    remove_column :guests, "first name", :string
  end
end
