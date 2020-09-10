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

ActiveRecord::Schema.define(version: 2020_09_10_023701) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "appointment_fields", force: :cascade do |t|
    t.string "field_type"
    t.boolean "required"
    t.bigint "appointment_type_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.index ["appointment_type_id"], name: "index_appointment_fields_on_appointment_type_id"
  end

  create_table "appointment_types", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "appointments", force: :cascade do |t|
    t.date "date"
    t.time "hour"
    t.text "comments"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "appointment_type_id"
    t.text "properties"
  end

  create_table "businesses", force: :cascade do |t|
    t.string "phone"
    t.boolean "agreement"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "exam_batteries", force: :cascade do |t|
    t.string "name"
    t.string "certification"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "exam_batteries_exams", id: false, force: :cascade do |t|
    t.bigint "exam_battery_id", null: false
    t.bigint "exam_id", null: false
  end

  create_table "exams", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.string "order"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "price"
  end

  create_table "people", force: :cascade do |t|
    t.string "name"
    t.string "rut"
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
    t.integer "meta_id"
    t.string "meta_type"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["meta_id", "meta_type"], name: "index_users_on_meta_id_and_meta_type"
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "appointment_fields", "appointment_types"
end
