class AddTableToGuests < ActiveRecord::Migration[5.0]
  def change
    add_column :guests, :table, :integer
  end
end
