class DropGirlsTable < ActiveRecord::Migration[5.0]
  def change
    drop_table :girls
  end
end
