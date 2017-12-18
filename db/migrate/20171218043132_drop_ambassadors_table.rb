class DropAmbassadorsTable < ActiveRecord::Migration[5.0]
  def change
    drop_table :ambassadors
  end
end
