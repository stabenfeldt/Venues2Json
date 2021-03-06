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

ActiveRecord::Schema.define(version: 20130620050501) do

  create_table "areas", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "venues", force: true do |t|
    t.string   "name"
    t.string   "address"
    t.time     "sun_from",   default: '2000-01-01 08:00:00'
    t.time     "sun_to",     default: '2000-01-01 23:30:00'
    t.integer  "area_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.float    "longitude"
    t.float    "latitude"
    t.string   "url"
    t.string   "image_url"
    t.boolean  "confirmed"
  end

  add_index "venues", ["area_id"], name: "index_venues_on_area_id", using: :btree

end
