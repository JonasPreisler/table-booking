class AddGuestlistIdToAmbassadors < ActiveRecord::Migration[5.0]
  def change
    add_column :ambassadors, :guestlist_id, :integer
  end
end
