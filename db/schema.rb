# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_04_23_141507) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "annual_reports", force: :cascade do |t|
    t.string "year"
    t.boolean "current"
    t.integer "budget"
    t.integer "dues_split"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "cabins", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.float "multiplier"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "repairs", force: :cascade do |t|
    t.string "category"
    t.text "description"
    t.date "submission_date"
    t.boolean "priority"
    t.text "followup"
    t.boolean "pending"
    t.integer "user_id"
    t.integer "cabin_id"
    t.integer "annual_report_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "reservations", force: :cascade do |t|
    t.date "arrival"
    t.date "departure"
    t.boolean "pending"
    t.integer "user_id"
    t.integer "cabin_id"
    t.integer "annual_report_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "password_digest"
    t.string "firstname"
    t.string "lastname"
    t.string "phone"
    t.string "address1"
    t.string "address2"
    t.string "city"
    t.string "state"
    t.string "zip"
    t.date "bday"
    t.string "photo_url"
    t.boolean "admin"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
