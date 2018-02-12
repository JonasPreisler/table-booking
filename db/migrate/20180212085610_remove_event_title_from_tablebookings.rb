class RemoveEventTitleFromTablebookings < ActiveRecord::Migration[5.0]
  def change
    remove_column :tablebookings, :event_title, :string
    remove_column :tablebookings, :guest_id, :integer
    remove_column :tablebookings, :guestlist_id, :integer
  end
end
