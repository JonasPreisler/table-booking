class AddAmbassadorNameToEvents < ActiveRecord::Migration[5.0]
  def change
    add_column :events, :ambassador_name, :string
  end
end
