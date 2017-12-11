class AddProfilepicurlAndMessengeruseridAndChatfueluseridToGuests < ActiveRecord::Migration[5.0]
  def change
    add_column :guests, :profilepicurl, :string
    add_column :guests, :messengeruserid, :string
    add_column :guests, :chatfueluserid, :string
  end
end
