class AddTableIdToTablebookings < ActiveRecord::Migration[5.0]
  def change
    add_column :tablebookings, :table_id, :integer
  end
end
