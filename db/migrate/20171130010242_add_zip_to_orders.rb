class AddZipToOrders < ActiveRecord::Migration[5.0]
  def change
    add_column :orders, :zip, :integer
  end
end
