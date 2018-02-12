class AddTableNumberToTables < ActiveRecord::Migration[5.0]
  def change
    add_column :tables, :table_number, :integer
  end
end
