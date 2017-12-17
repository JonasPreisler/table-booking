class CreateGirls < ActiveRecord::Migration[5.0]
  def change
    create_table :girls, {:id => false} do |t|
      t.string :name
      t.timestamps
    end
    execute "ALTER TABLE girls ADD PRIMARY KEY (name);"
  end
end
