require "administrate/base_dashboard"

class CurrentTradeDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    id: Field::Number,
    attachment: PaperclipField,
    title_en: Field::String,
    title_cn: Field::String,
    description_en: Field::String,
    description_cn: Field::Text,
    updated_at: Field::DateTime,
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :id,
    :attachment,
    :title_en,
    :title_cn,
    :description_en,
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :id,
    :attachment,
    :title_en,
    :title_cn,
    :description_en,
    :description_cn,
    :created_at,
    :updated_at,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :attachment,
    :title_en,
    :title_cn,
    :description_en,
    :description_cn,
  ].freeze

  # Overwrite this method to customize how current trades are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(current_trade)
  #   "CurrentTrade ##{current_trade.id}"
  # end
end
