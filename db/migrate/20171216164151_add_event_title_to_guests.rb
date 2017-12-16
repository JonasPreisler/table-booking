class AddEventTitleToGuests < ActiveRecord::Migration[5.0]
  def change
    add_column :guests, :event_title, :string
  end
end
