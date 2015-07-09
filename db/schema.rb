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

ActiveRecord::Schema.define(version: 20150709183256) do

  create_table "media", force: :cascade do |t|
    t.string   "link"
    t.integer  "media_type_id"
    t.integer  "topic_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "media", ["media_type_id"], name: "index_media_on_media_type_id"
  add_index "media", ["topic_id"], name: "index_media_on_topic_id"

  create_table "media_types", force: :cascade do |t|
    t.string   "type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "prayer_points", force: :cascade do |t|
    t.string   "point"
    t.integer  "prayer_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "prayer_points", ["prayer_id"], name: "index_prayer_points_on_prayer_id"

  create_table "prayers", force: :cascade do |t|
    t.string   "title"
    t.integer  "topic_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "prayers", ["topic_id"], name: "index_prayers_on_topic_id"

  create_table "result_sets", force: :cascade do |t|
    t.integer  "topic_id"
    t.integer  "scripture"
    t.integer  "prayer_id"
    t.integer  "media_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "scriptures", force: :cascade do |t|
    t.string   "book"
    t.string   "chapter"
    t.string   "verser"
    t.text     "text"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "topics", force: :cascade do |t|
    t.string   "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
