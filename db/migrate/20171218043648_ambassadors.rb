class Ambassadors < ActiveRecord::Migration[5.0]
  create_table :ambassadors, {:id => false} do |t|
    t.string   "name"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "guest"
    t.integer  "guestlist"
    t.integer  "event"
    t.integer  "guestlist_id"
    t.integer  "guest_id"
    t.string   "slug"
    t.index ["slug"], name: "index_ambassadors_on_slug", unique: true, using: :btree
  end
  execute "ALTER TABLE ambassadors ADD PRIMARY KEY (name);"
end
