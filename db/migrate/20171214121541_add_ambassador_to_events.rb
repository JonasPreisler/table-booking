class AddAmbassadorToEvents < ActiveRecord::Migration[5.0]
  def change
    add_column :events, :ambassador, :string
  end
end
