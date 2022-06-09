# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2022_06_09_110521) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "dunnas_address_addresses", force: :cascade do |t|
    t.string "street"
    t.string "number"
    t.string "zip_code"
    t.string "district"
    t.string "complement"
    t.string "addressable_type", null: false
    t.bigint "addressable_id", null: false
    t.bigint "city_id", null: false
    t.bigint "state_id", null: false
    t.string "ibge"
    t.string "gia"
    t.string "ddd"
    t.string "siafi"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["addressable_type", "addressable_id"], name: "index_dunnas_address_addresses_on_addressable"
    t.index ["city_id"], name: "index_dunnas_address_addresses_on_city_id"
    t.index ["state_id"], name: "index_dunnas_address_addresses_on_state_id"
  end

  create_table "dunnas_address_cities", force: :cascade do |t|
    t.string "name"
    t.bigint "state_id", null: false
    t.string "code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["state_id"], name: "index_dunnas_address_cities_on_state_id"
  end

  create_table "dunnas_address_states", force: :cascade do |t|
    t.string "name"
    t.string "acronym"
    t.string "time_zone"
    t.string "region"
    t.string "capital"
    t.string "code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "dunnas_contacts_contacts", id: :serial, force: :cascade do |t|
    t.string "contactable_type", null: false
    t.integer "contactable_id", null: false
    t.string "name"
    t.string "description"
    t.string "type"
    t.string "value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["contactable_type", "contactable_id"], name: "index_dunnas_contacts_contacts_on_contactable"
  end

  add_foreign_key "dunnas_address_addresses", "dunnas_address_cities", column: "city_id"
  add_foreign_key "dunnas_address_addresses", "dunnas_address_states", column: "state_id"
  add_foreign_key "dunnas_address_cities", "dunnas_address_states", column: "state_id"
end
