class RenamePromotersToAmbassadors < ActiveRecord::Migration[5.0]
  def change
    rename_table :promoters, :ambassadors
  end 
end
