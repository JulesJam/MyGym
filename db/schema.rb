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

ActiveRecord::Schema.define(version: 20160809105313) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "activities", force: :cascade do |t|
    t.string   "activity_name"
    t.text     "description"
    t.string   "location"
    t.date     "date"
    t.time     "start_time"
    t.time     "duration"
    t.integer  "number_of_places"
    t.string   "status"
    t.boolean  "active"
    t.string   "image"
    t.integer  "places_taken"
    t.integer  "user_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.index ["user_id"], name: "index_activities_on_user_id", using: :btree
  end

  create_table "activities_users", id: false, force: :cascade do |t|
    t.integer "user_id",     null: false
    t.integer "activity_id", null: false
  end

  create_table "conversations", force: :cascade do |t|
    t.integer  "sender_id"
    t.integer  "receiver_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "membership_fees", force: :cascade do |t|
    t.float    "paid_amount"
    t.date     "paid_date"
    t.string   "user_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "membership_types", force: :cascade do |t|
    t.string   "image"
    t.string   "title"
    t.text     "description"
    t.date     "date_valid_from"
    t.date     "date_valid_to"
    t.boolean  "active"
    t.float    "price"
    t.integer  "age_eligibility_lower"
    t.integer  "age_eligibility_upper"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
    t.integer  "validity_period"
  end

  create_table "messages", force: :cascade do |t|
    t.text     "body"
    t.integer  "conversation_id"
    t.integer  "user_id"
    t.boolean  "read",            default: false
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
    t.index ["conversation_id"], name: "index_messages_on_conversation_id", using: :btree
    t.index ["user_id"], name: "index_messages_on_user_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "username"
    t.string   "first_name"
    t.string   "last_name"
    t.integer  "admin_level"
    t.date     "date_of_birth"
    t.text     "image"
    t.boolean  "accept_comms"
    t.boolean  "accept_proms"
    t.string   "mobile_tel_number"
    t.boolean  "accept_texts"
    t.string   "other_tel_number"
    t.string   "post_code"
    t.string   "house_flat_name_number"
    t.string   "street_address"
    t.string   "locality"
    t.string   "city"
    t.datetime "last_visit_date"
    t.integer  "total_visits"
    t.date     "membership_expiry_date"
    t.integer  "membership_type_id"
    t.text     "profile"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.string   "user_image"
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  add_foreign_key "activities", "users"
  add_foreign_key "messages", "conversations"
  add_foreign_key "messages", "users"
end
