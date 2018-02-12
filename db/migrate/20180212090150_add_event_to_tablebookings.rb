class AddEventToTablebookings < ActiveRecord::Migration[5.0]
  def change
    add_column :tablebookings, :event, :integer
  end
end
