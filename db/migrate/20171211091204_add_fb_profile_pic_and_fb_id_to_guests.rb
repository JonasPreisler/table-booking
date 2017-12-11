class AddFbProfilePicAndFbIdToGuests < ActiveRecord::Migration[5.0]
  def change
    add_column :guests, :fb_profile_pic, :string
    add_column :guests, :fb_id, :string
  end
end
