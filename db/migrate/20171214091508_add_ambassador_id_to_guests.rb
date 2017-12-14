class AddAmbassadorIdToGuests < ActiveRecord::Migration[5.0]
  def change
    add_column :guests, :ambassador_id, :integer
  end
end
