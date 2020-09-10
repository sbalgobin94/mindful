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

ActiveRecord::Schema.define(version: 2020_09_10_135336) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "appointments", force: :cascade do |t|
    t.date "date"
    t.bigint "user_id", null: false
    t.bigint "therapist_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "apptime_id"
    t.index ["apptime_id"], name: "index_appointments_on_apptime_id"
    t.index ["therapist_id"], name: "index_appointments_on_therapist_id"
    t.index ["user_id"], name: "index_appointments_on_user_id"
  end

  create_table "apptimes", force: :cascade do |t|
    t.string "time"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "goals", force: :cascade do |t|
    t.text "content"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.boolean "goal_status", default: false
    t.index ["user_id"], name: "index_goals_on_user_id"
  end

  create_table "journals", force: :cascade do |t|
    t.date "date"
    t.text "content"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_journals_on_user_id"
  end

  create_table "therapists", force: :cascade do |t|
    t.string "name"
    t.string "title"
    t.string "specialty"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "image_url"
    t.text "description"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "username"
    t.string "string"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "password_digest"
  end

  add_foreign_key "appointments", "therapists"
  add_foreign_key "appointments", "users"
  add_foreign_key "goals", "users"
  add_foreign_key "journals", "users"
end
