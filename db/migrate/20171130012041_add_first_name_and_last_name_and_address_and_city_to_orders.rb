class AddFirstNameAndLastNameAndAddressAndCityToOrders < ActiveRecord::Migration[5.0]
  def change
    add_column :orders, :last_name, :string
    add_column :orders, :city, :string
  end
end
