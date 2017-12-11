class AddGuestAndDateToEvents < ActiveRecord::Migration[5.0]
  def change
    add_column :events, :guest, :string
    add_column :events, :date, :date
  end
end
