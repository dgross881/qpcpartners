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

ActiveRecord::Schema.define(version: 20170303234113) do

  create_table "ckeditor_assets", force: :cascade do |t|
    t.string   "data_file_name",               null: false
    t.string   "data_content_type"
    t.integer  "data_file_size"
    t.integer  "assetable_id"
    t.string   "assetable_type",    limit: 30
    t.string   "type",              limit: 30
    t.integer  "width"
    t.integer  "height"
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
    t.index ["assetable_type", "assetable_id"], name: "idx_ckeditor_assetable"
    t.index ["assetable_type", "type", "assetable_id"], name: "idx_ckeditor_assetable_type"
  end

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

  create_table "current_trades", force: :cascade do |t|
    t.string   "title_en"
    t.string   "title_cn"
    t.string   "description_en"
    t.text     "description_cn"
    t.string   "attachment_file_name"
    t.string   "attachment_content_type"
    t.integer  "attachment_file_size"
    t.datetime "attachment_updated_at"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "investments", force: :cascade do |t|
    t.string   "title_en"
    t.string   "title_cn"
    t.text     "description_en"
    t.text     "description_cn"
    t.string   "attachment_file_name"
    t.string   "attachment_content_type"
    t.integer  "attachment_file_size"
    t.datetime "attachment_updated_at"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "phrasing_phrases", force: :cascade do |t|
    t.string   "locale"
    t.string   "key"
    t.text     "value"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["locale", "key"], name: "index_phrasing_phrases_on_locale_and_key", unique: true
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

  create_table "roles", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_roles_on_name", unique: true
  end

  create_table "roles_users", id: false, force: :cascade do |t|
    t.integer "role_id"
    t.integer "user_id"
    t.index ["role_id"], name: "index_roles_users_on_role_id"
    t.index ["user_id"], name: "index_roles_users_on_user_id"
  end

  create_table "services", force: :cascade do |t|
    t.string   "title_en"
    t.text     "description_en"
    t.string   "title_cn"
    t.string   "description_cn"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "slides", force: :cascade do |t|
    t.string   "title_en"
    t.text     "description_en"
    t.string   "link_url"
    t.boolean  "published"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "position",                           default: 0,        null: false
    t.string   "cta_1_text"
    t.string   "cta_1_link"
    t.string   "cta_2_text"
    t.string   "cta_2_link"
    t.string   "color_name"
    t.string   "color_body"
    t.string   "color_bg"
    t.string   "color_cta_1_text"
    t.string   "color_cta_1_bg"
    t.string   "color_cta_2_text"
    t.string   "color_cta_2_bg"
    t.string   "color_cta_1_hover"
    t.string   "color_cta_2_hover"
    t.string   "alt_text"
    t.string   "head_pos",                           default: "left"
    t.string   "cta_pos",                            default: "right"
    t.string   "img_pos",                            default: "center"
    t.string   "attachment_background_file_name"
    t.string   "attachment_background_content_type"
    t.integer  "attachment_background_file_size"
    t.datetime "attachment_background_updated_at"
    t.string   "title_cn"
    t.text     "description_cn"
    t.string   "attachment_file_name"
    t.string   "attachment_content_type"
    t.integer  "attachment_file_size"
    t.datetime "attachment_updated_at"
  end

  create_table "summaries", force: :cascade do |t|
    t.text     "body"
    t.boolean  "publish",    default: false
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
