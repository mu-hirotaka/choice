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

ActiveRecord::Schema.define(version: 20140725010702) do

  create_table "character_summaries", force: true do |t|
    t.integer  "quest_id",                   null: false
    t.integer  "character_id",               null: false
    t.integer  "selected_count", default: 0, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "characters", force: true do |t|
    t.integer "quest_id",     null: false
    t.integer "character_id", null: false
    t.string  "name",         null: false
  end

  create_table "quest_masters", force: true do |t|
    t.string   "title",      null: false
    t.string   "content",    null: false
    t.integer  "opened_at",  null: false
    t.integer  "closed_at",  null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
