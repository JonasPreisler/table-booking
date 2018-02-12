class AddTableIdToGuests < ActiveRecord::Migration[5.0]
  def change
    add_column :guests, :table_id, :integer
  end
end
