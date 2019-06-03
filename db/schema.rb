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

ActiveRecord::Schema.define(version: 2019_06_03_082309) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "activities", force: :cascade do |t|
    t.string "photo"
    t.string "title"
    t.string "description"
    t.datetime "date"
    t.string "meeting_point"
    t.integer "number_of_people"
    t.string "gender"
    t.string "category"
    t.float "latitude"
    t.float "longitude"
    t.integer "min_age"
    t.integer "max_age"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_activities_on_user_id"
  end

  create_table "appointments", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "activity_id"
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["activity_id"], name: "index_appointments_on_activity_id"
    t.index ["user_id"], name: "index_appointments_on_user_id"
  end

  create_table "messages", force: :cascade do |t|
    t.bigint "activity_id"
    t.bigint "user_id"
    t.string "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["activity_id"], name: "index_messages_on_activity_id"
    t.index ["user_id"], name: "index_messages_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "avatar"
    t.string "email"
    t.string "name"
    t.string "location"
    t.integer "age"
    t.string "gender"
    t.float "latitude"
    t.float "longitude"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "activities", "users"
  add_foreign_key "appointments", "activities"
  add_foreign_key "appointments", "users"
  add_foreign_key "messages", "activities"
  add_foreign_key "messages", "users"
end
