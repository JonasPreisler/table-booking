class AddGuestAndGuestlistAndEventToAmbassadors < ActiveRecord::Migration[5.0]
  def change
    add_column :ambassadors, :guest, :integer
    add_column :ambassadors, :guestlist, :integer
    add_column :ambassadors, :event, :integer
  end
end
