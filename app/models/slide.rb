# == Schema Information
#
# Table name: slides
#
#  id                 :integer          not null, primary key
#  name               :string
#  body               :text
#  link_url           :string
#  published          :boolean
#  image_file_name    :string
#  image_content_type :string
#  image_file_size    :integer
#  image_updated_at   :datetime
#  created_at         :datetime
#  updated_at         :datetime
#  position           :integer          default(0), not null
#  cta_1_text         :string
#  cta_1_link         :string
#  cta_2_text         :string
#  cta_2_link         :string
#  color_name         :string
#  color_body         :string
#  color_bg           :string
#  color_cta_1_text   :string
#  color_cta_1_bg     :string
#  color_cta_2_text   :string
#  color_cta_2_bg     :string
#  color_cta_1_hover  :string
#  color_cta_2_hover  :string
#  alt_text           :string
#  head_pos           :string           default("left")
#  cta_pos            :string           default("right")
#  img_pos            :string           default("center")
#

class Slide < ActiveRecord::Base
  has_attached_file :image

  validates_attachment :image, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png", "image/gif"] }
  scope :published, -> { where(published: true).order('position ASC') }

  belongs_to :product, touch: true

  def initialize(attrs = nil)
    attrs ||= {:published => true}
    super
  end

  validates :head_pos, :cta_pos, :img_pos, inclusion: { in: %w(left center right) }, allow_nil: false, allow_blank: false

  include AttachedFileModule
  attached_file_module(:image, '/slides/:id_:basename/:style/:basename.:extension', {
                         styles: { slide: '1100x390#' },
                         convert_options: { all: lambda { |inst| "-strip -auto-orient -colorspace sRGB -quality 80#{ ' -interlace Plane' if inst.image_file_name.index('.gif').nil? }" } },
                         default_style: :slide
                       })
end
