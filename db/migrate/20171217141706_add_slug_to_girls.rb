class AddSlugToGirls < ActiveRecord::Migration[5.0]
  def change
    add_column :girls, :slug, :string
  end
end
