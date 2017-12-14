class AddGuestIdToAmbassadors < ActiveRecord::Migration[5.0]
  def change
    add_column :ambassadors, :guest_id, :integer
  end
end
