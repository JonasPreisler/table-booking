class AddGuestlistToEvents < ActiveRecord::Migration[5.0]
  def change
    add_column :events, :guestlist, :integer
  end
end
