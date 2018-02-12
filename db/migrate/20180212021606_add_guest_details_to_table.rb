class AddGuestDetailsToTable < ActiveRecord::Migration[5.0]
  def change
    add_column :tables, :first_name, :string
    add_column :tables, :last_name, :string
    add_column :tables, :event_id, :integer
    add_column :tables, :event_title, :string
  end
end
