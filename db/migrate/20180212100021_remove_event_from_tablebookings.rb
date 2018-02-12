class RemoveEventFromTablebookings < ActiveRecord::Migration[5.0]
  def change
    remove_column :tablebookings, :event, :integer
  end
end
