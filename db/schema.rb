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

ActiveRecord::Schema.define(version: 2018_12_13_055922) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "accessories", force: :cascade do |t|
    t.string "name"
    t.string "brand"
    t.string "model"
    t.string "sku"
    t.float "value"
    t.string "status"
    t.string "observations"
    t.string "assignment"
    t.integer "quantity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "computer_equipments", force: :cascade do |t|
    t.string "brand"
    t.string "model"
    t.string "sku"
    t.float "value"
    t.string "status"
    t.string "observations"
    t.string "assignment"
    t.string "category"
    t.integer "quantity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "consumables", force: :cascade do |t|
    t.string "brand"
    t.string "model"
    t.float "value"
    t.string "type"
    t.integer "quantity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "employees", force: :cascade do |t|
    t.string "name"
    t.string "job"
    t.string "immediate_boss"
    t.bigint "phone_device_id"
    t.bigint "computer_equipment_id"
    t.bigint "accessory_id"
    t.bigint "printer_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["accessory_id"], name: "index_employees_on_accessory_id"
    t.index ["computer_equipment_id"], name: "index_employees_on_computer_equipment_id"
    t.index ["phone_device_id"], name: "index_employees_on_phone_device_id"
    t.index ["printer_id"], name: "index_employees_on_printer_id"
  end

  create_table "materials", force: :cascade do |t|
    t.string "brand"
    t.string "model"
    t.float "value"
    t.string "type"
    t.integer "quantity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "phone_devices", force: :cascade do |t|
    t.string "brand"
    t.string "model"
    t.string "sku"
    t.float "value"
    t.string "status"
    t.string "observations"
    t.string "assignment"
    t.string "quantity"
    t.string "IMEI"
    t.bigint "phone_line_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["phone_line_id"], name: "index_phone_devices_on_phone_line_id"
  end

  create_table "phone_lines", force: :cascade do |t|
    t.string "number"
    t.string "SIM_key"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "printers", force: :cascade do |t|
    t.string "brand"
    t.string "model"
    t.string "sku"
    t.float "value"
    t.string "status"
    t.string "observations"
    t.string "assignment"
    t.string "quantity"
    t.bigint "consumable_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["consumable_id"], name: "index_printers_on_consumable_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "job"
    t.string "immediate_boss"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.bigint "phone_device_id"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["phone_device_id"], name: "index_users_on_phone_device_id"
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "warehouses", force: :cascade do |t|
    t.integer "quantity"
    t.bigint "accessory_id"
    t.bigint "computer_equipment_id"
    t.bigint "printer_id"
    t.bigint "consumable_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["accessory_id"], name: "index_warehouses_on_accessory_id"
    t.index ["computer_equipment_id"], name: "index_warehouses_on_computer_equipment_id"
    t.index ["consumable_id"], name: "index_warehouses_on_consumable_id"
    t.index ["printer_id"], name: "index_warehouses_on_printer_id"
  end

  add_foreign_key "employees", "accessories"
  add_foreign_key "employees", "computer_equipments"
  add_foreign_key "employees", "phone_devices"
  add_foreign_key "employees", "printers"
  add_foreign_key "phone_devices", "phone_lines"
  add_foreign_key "printers", "consumables"
  add_foreign_key "users", "phone_devices"
  add_foreign_key "warehouses", "accessories"
  add_foreign_key "warehouses", "computer_equipments"
  add_foreign_key "warehouses", "consumables"
  add_foreign_key "warehouses", "printers"
end
