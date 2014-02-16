# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20140216003337) do

  create_table "conditions", force: true do |t|
    t.string "name"
  end

  create_table "drugs", force: true do |t|
    t.string  "name"
    t.integer "condition_id"
  end

  create_table "messages", force: true do |t|
    t.text    "message"
    t.integer "user_id"
    t.integer "patient_id"
    t.string  "send_type"
  end

  create_table "patient_conditions", force: true do |t|
    t.integer "patient_id"
    t.integer "condition_id"
  end

  add_index "patient_conditions", ["condition_id"], name: "index_patient_conditions_on_condition_id"
  add_index "patient_conditions", ["patient_id"], name: "index_patient_conditions_on_patient_id"

  create_table "patients", force: true do |t|
    t.string  "name"
    t.string  "phone"
    t.integer "user_id"
  end

  create_table "schedules", force: true do |t|
    t.integer  "drug_id"
    t.datetime "time_to_send"
  end

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
