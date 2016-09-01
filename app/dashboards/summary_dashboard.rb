require "administrate/base_dashboard"

class SummaryDashboard < Administrate::BaseDashboard
  ATTRIBUTE_TYPES = {
    id: Field::Number,
    body: CkeditorField,
    publish: Field::Boolean,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
  }

  COLLECTION_ATTRIBUTES = [
    :id,
    :body,
    :publish,
    :created_at,
  ]

  SHOW_PAGE_ATTRIBUTES = [
    :id,
    :body,
    :publish,
    :created_at,
    :updated_at,
  ]

  FORM_ATTRIBUTES = [
    :body,
    :publish,
  ]

  # Overwrite this method to customize how summaries are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(summary)
  #   "Summary ##{summary.id}"
  # end
end
