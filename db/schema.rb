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

ActiveRecord::Schema.define(version: 2018_10_20_190959) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "event_bookings", force: :cascade do |t|
    t.boolean "approved", default: false
    t.boolean "expired", default: false
    t.bigint "event_id"
    t.bigint "tenant_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["event_id"], name: "index_event_bookings_on_event_id"
    t.index ["tenant_id"], name: "index_event_bookings_on_tenant_id"
  end

  create_table "events", force: :cascade do |t|
    t.string "name"
    t.datetime "date"
    t.integer "attendees"
    t.integer "capacity"
    t.string "address"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_events_on_user_id"
  end

  create_table "flat_contracts", force: :cascade do |t|
    t.bigint "tenant_id"
    t.bigint "flat_id"
    t.date "start_date"
    t.date "end_date"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["flat_id"], name: "index_flat_contracts_on_flat_id"
    t.index ["tenant_id"], name: "index_flat_contracts_on_tenant_id"
    t.index ["user_id"], name: "index_flat_contracts_on_user_id"
  end

  create_table "flats", force: :cascade do |t|
    t.string "flat_type"
    t.string "address"
    t.integer "floor_number"
    t.integer "occupancy"
    t.integer "bedrooms"
    t.integer "bathrooms"
    t.boolean "availability"
    t.bigint "location_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "flat_number"
    t.index ["location_id"], name: "index_flats_on_location_id"
  end

  create_table "locations", force: :cascade do |t|
    t.string "name"
    t.boolean "open"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "city"
  end

  create_table "tenants", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.string "phone"
    t.string "username"
    t.date "birthday"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "admin"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "event_bookings", "events"
  add_foreign_key "event_bookings", "tenants"
  add_foreign_key "events", "users"
  add_foreign_key "flat_contracts", "flats"
  add_foreign_key "flat_contracts", "tenants"
  add_foreign_key "flat_contracts", "users"
  add_foreign_key "flats", "locations"
end
