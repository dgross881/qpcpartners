require "administrate/base_dashboard"

class RealEstateDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    id: Field::Number,
    description_en: Field::String,
    description_cn: Field::String,
    area_en: Field::String,
    area_cn: Field::String,
    type_en: Field::String,
    type_cn: Field::String,
    size_en: Field::String,
    size_cn: Field::String,
    beds: Field::Number,
    baths: Field::Number,
    recent_project: Field::Boolean,
    attachment: PaperclipField,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
  }

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :id,
    :attachment,
    :area_en,
  ]

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :id,
    :attachment,
    :description_en,
    :description_cn,
    :area_en,
    :area_cn,
    :type_en,
    :type_cn,
    :size_en,
    :size_cn,
    :beds,
    :baths,
    :recent_project,
    :created_at,
    :updated_at
  ]

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :attachment,
    :description_en,
    :description_cn,
    :area_en,
    :area_cn,
    :type_en,
    :type_cn,
    :size_en,
    :size_cn,
    :beds,
    :baths,
    :recent_project
  ]

  # Overwrite this method to customize how real estates are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(real_estate)
  #   "RealEstate ##{real_estate.id}"
  # end
end
