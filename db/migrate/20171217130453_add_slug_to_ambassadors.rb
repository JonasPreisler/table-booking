class AddSlugToAmbassadors < ActiveRecord::Migration[5.0]
  def change
    add_column :ambassadors, :slug, :string
    add_index :ambassadors, :slug, unique: true
  end
end
