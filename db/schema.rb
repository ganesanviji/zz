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

ActiveRecord::Schema.define(version: 20140924081509) do

  create_table "s1s", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sampleforms", force: true do |t|
    t.string   "firstname"
    t.string   "lastname"
    t.string   "gender"
    t.string   "address"
    t.string   "country"
    t.string   "email"
    t.string   "password"
    t.string   "confirm_password"
    t.string   "images"
    t.integer  "s1_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "sampleforms", ["s1_id"], name: "index_sampleforms_on_s1_id"

end
