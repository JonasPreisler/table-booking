class CreateGuestlists < ActiveRecord::Migration[5.0]
  def change
    create_table :guestlists do |t|
      t.string :first_name
      t.string :last_name
      t.string :gender

      t.timestamps
    end
  end
end
