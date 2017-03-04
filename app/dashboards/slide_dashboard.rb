require "administrate/base_dashboard"

class SlideDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    product: Field::BelongsTo,
    id: Field::Number,
    link_url: Field::String,
    published: Field::Boolean,
    attachment: PaperclipField,
    attachment_background: PaperclipField,
    title_en: Field::String,
    title_cn: Field::String,
    description_en: Field::Text,
    description_cn: Field::Text,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
    position: Field::Number,
    cta_1_text: Field::String,
    cta_1_link: Field::String,
    cta_2_text: Field::String,
    cta_2_link: Field::String,
    color_name: Field::String,
    color_body: Field::String,
    color_bg: Field::String,
    color_cta_1_text: Field::String,
    color_cta_1_bg: Field::String,
    color_cta_2_text: Field::String,
    color_cta_2_bg: Field::String,
    color_cta_1_hover: Field::String,
    color_cta_2_hover: Field::String,
    alt_text: Field::String,
    head_pos: Field::String,
    cta_pos: Field::String,
    img_pos: Field::String,
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :product,
    :id,
    :title_en,
    :description_en,
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :product,
    :id,
    :title_en,
    :title_cn,
    :description_en,
    :description_cn,
    :link_url,
    :published,
    :attachment,
    :attachment_background,
    :created_at,
    :updated_at,
    :position,
    :cta_1_text,
    :cta_1_link,
    :cta_2_text,
    :cta_2_link,
    :color_name,
    :color_body,
    :color_bg,
    :color_cta_1_text,
    :color_cta_1_bg,
    :color_cta_2_text,
    :color_cta_2_bg,
    :color_cta_1_hover,
    :color_cta_2_hover,
    :alt_text,
    :head_pos,
    :cta_pos,
    :img_pos,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :title_en,
    :title_cn,
    :description_en,
    :description_cn,
    :link_url,
    :published,
    :attachment,
    :attachment_background,
  ].freeze

  # Overwrite this method to customize how slides are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(slide)
  #   "Slide ##{slide.id}"
  # end
end
