class AddAmbassadorIdToEvents < ActiveRecord::Migration[5.0]
  def change
    add_column :events, :ambassador_id, :integer
  end
end
