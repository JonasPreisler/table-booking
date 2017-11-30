class AddGadeToOrders < ActiveRecord::Migration[5.0]
  def change
    add_column :orders, :gade, :string
  end
end
