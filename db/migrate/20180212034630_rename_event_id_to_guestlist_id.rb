class RenameEventIdToGuestlistId < ActiveRecord::Migration[5.0]
  def change
    rename_column :tables, :event_id, :guestlist_id
  end
end