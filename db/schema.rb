# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20180212100021) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "acts", force: :cascade do |t|
    t.date     "date"
    t.time     "time"
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "youtube"
    t.string   "image"
    t.string   "scene"
    t.integer  "scene_id"
  end

  create_table "ambassadors", primary_key: "name", id: :string, force: :cascade do |t|
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

  create_table "amenities", force: :cascade do |t|
    t.string   "wifi"
    t.integer  "accident"
    t.string   "facility"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "concerts", force: :cascade do |t|
    t.string   "act"
    t.string   "scene"
    t.time     "time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "customers", force: :cascade do |t|
    t.string   "customer_name"
    t.string   "customer_phone"
    t.string   "customer_email"
    t.string   "customer_sex"
    t.text     "customer_address"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "days", force: :cascade do |t|
    t.string   "concert"
    t.string   "act"
    t.string   "scene"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "events", force: :cascade do |t|
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "guest"
    t.date     "date"
    t.string   "title"
    t.integer  "guestlist"
    t.string   "ambassador"
    t.string   "ambassador_name"
    t.integer  "ambassador_id"
  end

  create_table "friendly_id_slugs", force: :cascade do |t|
    t.string   "slug",                      null: false
    t.integer  "sluggable_id",              null: false
    t.string   "sluggable_type", limit: 50
    t.string   "scope"
    t.datetime "created_at"
    t.index ["slug", "sluggable_type", "scope"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type_and_scope", unique: true, using: :btree
    t.index ["slug", "sluggable_type"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type", using: :btree
    t.index ["sluggable_id"], name: "index_friendly_id_slugs_on_sluggable_id", using: :btree
    t.index ["sluggable_type"], name: "index_friendly_id_slugs_on_sluggable_type", using: :btree
  end

  create_table "guestlists", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "gender"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "guest"
    t.integer  "event_id"
    t.integer  "guest_id"
    t.string   "ambassador"
    t.string   "ambassador_name"
    t.integer  "ambassador_id"
    t.string   "event_title"
  end

  create_table "guests", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "gender"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "fb_profile_pic"
    t.string   "fb_id"
    t.string   "profilepicurl"
    t.string   "messengeruserid"
    t.string   "chatfueluserid"
    t.integer  "guestlist_id"
    t.string   "guestlist_type"
    t.integer  "guestlist"
    t.string   "ambassador"
    t.string   "ambassador_name"
    t.integer  "ambassador_id"
    t.integer  "event_id"
    t.string   "event_title"
    t.string   "girl_name"
    t.integer  "table"
    t.integer  "table_id"
    t.integer  "tablebooking_id"
  end

  create_table "measurements", force: :cascade do |t|
    t.integer  "order_id"
    t.string   "neck",               default: "0"
    t.string   "chest",              default: "0"
    t.string   "shoulder",           default: "0"
    t.string   "waist",              default: "0"
    t.string   "hips",               default: "0"
    t.string   "sleeve",             default: "0"
    t.string   "bicep",              default: "0"
    t.string   "wrist",              default: "0"
    t.string   "length",             default: "0"
    t.string   "thigh",              default: "0"
    t.string   "crotch",             default: "0"
    t.string   "ankles",             default: "0"
    t.string   "inseam",             default: "0"
    t.string   "outseam",            default: "0"
    t.text     "other_measurements", default: "0"
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
    t.index ["order_id"], name: "index_measurements_on_order_id", using: :btree
  end

  create_table "messages", force: :cascade do |t|
    t.string   "received"
    t.string   "reply"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "news", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "orders", force: :cascade do |t|
    t.integer  "customer_id"
    t.integer  "staff_id"
    t.date     "delivery_date"
    t.integer  "order_amount"
    t.integer  "order_paid"
    t.string   "order_status"
    t.text     "order_details"
    t.integer  "order_delete",  default: 0
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.integer  "zip"
    t.string   "last_name"
    t.string   "city"
    t.string   "gade"
    t.string   "pic"
    t.string   "image"
    t.index ["customer_id"], name: "index_orders_on_customer_id", using: :btree
    t.index ["staff_id"], name: "index_orders_on_staff_id", using: :btree
  end

  create_table "reservations", force: :cascade do |t|
    t.string   "therapist_id"
    t.string   "email"
    t.string   "first_name"
    t.string   "last_name"
    t.datetime "datetime"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "salaries", force: :cascade do |t|
    t.integer  "staff_id"
    t.date     "salary_date"
    t.string   "salary_month"
    t.integer  "salary_paid"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["staff_id"], name: "index_salaries_on_staff_id", using: :btree
  end

  create_table "scenes", force: :cascade do |t|
    t.string   "act"
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "image"
    t.date     "date"
    t.time     "time"
    t.integer  "act_id"
  end

  create_table "staffs", force: :cascade do |t|
    t.string   "staff_name"
    t.string   "staff_phone"
    t.string   "staff_email"
    t.string   "staff_sex"
    t.text     "staff_address"
    t.integer  "staff_salary"
    t.integer  "staff_delete",  default: 0
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "tablebookings", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.integer  "event_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "table_id"
  end

  create_table "tables", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "taggings", force: :cascade do |t|
    t.integer  "event_id"
    t.integer  "tag_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tags", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "therapists", force: :cascade do |t|
    t.string   "email"
    t.string   "first_name"
    t.string   "last_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  add_foreign_key "measurements", "orders"
  add_foreign_key "orders", "customers"
  add_foreign_key "orders", "staffs"
  add_foreign_key "salaries", "staffs"
end
