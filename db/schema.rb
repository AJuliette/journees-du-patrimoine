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

ActiveRecord::Schema[7.2].define(version: 2024_08_14_095958) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "events", force: :cascade do |t|
    t.integer "uid"
    t.string "title"
    t.text "long_description"
    t.string "conditions"
    t.string "daterange"
    t.datetime "firstdate_begin"
    t.datetime "firstdate_end"
    t.datetime "lastdate_begin"
    t.datetime "lastdate_end"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "location_id", null: false
    t.integer "year"
    t.index ["location_id"], name: "index_events_on_location_id"
  end

  create_table "locations", force: :cascade do |t|
    t.integer "uid"
    t.string "name"
    t.string "address"
    t.integer "postalcode"
    t.string "city"
    t.string "region"
    t.string "department"
    t.text "description"
    t.text "access"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "events", "locations"
end
