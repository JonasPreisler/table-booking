class AddEventTitleToGuestlists < ActiveRecord::Migration[5.0]
  def change
    add_column :guestlists, :event_title, :string
  end
end
