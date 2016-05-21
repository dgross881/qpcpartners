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

ActiveRecord::Schema.define(version: 20160521063130) do

  create_table "contacts", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.text     "message"
    t.string   "phone"
    t.string   "company"
    t.string   "website"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "real_estates", force: :cascade do |t|
    t.string   "description_en"
    t.string   "description_cn"
    t.string   "area_en"
    t.string   "area_cn"
    t.string   "type_en"
    t.string   "type_cn"
    t.string   "size_en"
    t.string   "size_cn"
    t.integer  "beds"
    t.integer  "baths"
    t.boolean  "recent_project",          default: false
    t.string   "attachment_file_name"
    t.string   "attachment_content_type"
    t.integer  "attachment_file_size"
    t.datetime "attachment_updated_at"
    t.datetime "created_at",                              null: false
    t.datetime "updated_at",                              null: false
  end

  create_table "services", force: :cascade do |t|
    t.string   "title_en"
    t.text     "description_en"
    t.string   "title_cn"
    t.string   "description_cn"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

end
