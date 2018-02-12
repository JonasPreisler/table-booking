class RemoveNumberFromTables < ActiveRecord::Migration[5.0]
  def change
    remove_column :tables, :number, :integer
    remove_column :tables, :guest, :integer
    remove_column :tables, :first_name, :string
    remove_column :tables, :last_name, :string
    remove_column :tables, :event_title, :string
    remove_column :tables, :table_number, :integer
    remove_column :tables, :guestlist_id, :integer
  end
end