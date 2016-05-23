class CreateSlides < ActiveRecord::Migration
  def change
   create_table "slides", force: :cascade do |t|
      t.string   "name"
      t.text     "body"
      t.string   "link_url"
      t.boolean  "published"
      t.string   "image_file_name"
      t.string   "image_content_type"
      t.integer  "image_file_size"
      t.datetime "image_updated_at"
      t.datetime "created_at"
      t.datetime "updated_at"
      t.integer  "position",           default: 0,        null: false
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
      t.string   "head_pos",           default: "left"
      t.string   "cta_pos",            default: "right"
      t.string   "img_pos",            default: "center"
    end
  end
end
