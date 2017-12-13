class AddEventIdToGuestlists < ActiveRecord::Migration[5.0]
  def change
    add_column :guestlists, :event_id, :integer
  end
end
