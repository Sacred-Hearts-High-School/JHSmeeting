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

ActiveRecord::Schema.define(version: 20150830085716) do

  create_table "members", force: true do |t|
    t.string   "name"
    t.string   "title"
    t.string   "personal_id"
    t.string   "office_phone"
    t.string   "mobile_phone"
    t.string   "address"
    t.string   "email"
    t.string   "school"
    t.integer  "person_type"
    t.integer  "room_type"
    t.string   "room_partiner"
    t.integer  "room_date"
    t.integer  "food"
    t.integer  "transportation"
    t.string   "car_id"
    t.integer  "group"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "account"
    t.string   "name"
    t.string   "password"
    t.boolean  "is_admin"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
