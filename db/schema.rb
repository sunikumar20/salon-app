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

ActiveRecord::Schema.define(version: 2021_11_11_084251) do

  create_table "bookings", force: :cascade do |t|
    t.integer "salon_id", null: false
    t.float "total_price"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["salon_id"], name: "index_bookings_on_salon_id"
  end

  create_table "bookings_services", id: false, force: :cascade do |t|
    t.integer "booking_id", null: false
    t.integer "service_id", null: false
    t.datetime "timeslot"
  end

  create_table "employees", force: :cascade do |t|
    t.string "name"
    t.integer "salon_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["salon_id"], name: "index_employees_on_salon_id"
  end

  create_table "employees_services", id: false, force: :cascade do |t|
    t.integer "employee_id", null: false
    t.integer "service_id", null: false
  end

  create_table "salons", force: :cascade do |t|
    t.string "company_name"
    t.string "gstin"
    t.string "pan_number"
    t.text "address"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "services", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.time "start_time"
    t.float "price"
    t.integer "salon_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.time "end_time"
    t.index ["salon_id"], name: "index_services_on_salon_id"
  end

  add_foreign_key "bookings", "salons"
  add_foreign_key "employees", "salons"
end
