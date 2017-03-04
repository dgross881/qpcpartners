# == Schema Information
#
# Table name: slides
#
#  id                                 :integer          not null, primary key
#  title_en                           :string
#  description_en                     :text
#  link_url                           :string
#  published                          :boolean
#  created_at                         :datetime
#  updated_at                         :datetime
#  position                           :integer          default(0), not null
#  cta_1_text                         :string
#  cta_1_link                         :string
#  cta_2_text                         :string
#  cta_2_link                         :string
#  color_name                         :string
#  color_body                         :string
#  color_bg                           :string
#  color_cta_1_text                   :string
#  color_cta_1_bg                     :string
#  color_cta_2_text                   :string
#  color_cta_2_bg                     :string
#  color_cta_1_hover                  :string
#  color_cta_2_hover                  :string
#  alt_text                           :string
#  head_pos                           :string           default("left")
#  cta_pos                            :string           default("right")
#  img_pos                            :string           default("center")
#  attachment_background_file_name    :string
#  attachment_background_content_type :string
#  attachment_background_file_size    :integer
#  attachment_background_updated_at   :datetime
#  title_cn                           :string
#  description_cn                     :text
#  attachment_file_name               :string
#  attachment_content_type            :string
#  attachment_file_size               :integer
#  attachment_updated_at              :datetime
#

class Slide < ActiveRecord::Base
  include AttachedFileModule

  has_attached_file :attachment
  has_attached_file :attachment_background

  validates_attachment :attachment, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png", "image/gif"] }

  validates_attachment :attachment_background, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png", "image/gif"] }

  scope :published, -> { where(published: true).order('position ASC') }

  belongs_to :product, touch: true

  def initialize(attrs = nil)
    attrs ||= {:published => true}
    super
  end

  validates :head_pos, :cta_pos, :img_pos, inclusion: { in: %w(left center right) }, allow_nil: false, allow_blank: false

  attached_file_module(:attachment, '/slides/:id_:basename/:style/:basename.:extension', {
                         styles: { slide: '1100x390#' },
                         convert_options: { all: lambda { |inst| "-strip -auto-orient -colorspace sRGB -quality 80#{ ' -interlace Plane' if inst.attachment_file_name.index('.gif').nil? }" } },
                         default_style: :slide
                       })
  
  attached_file_module(:attachment_background, '/slides/:id_:basename/:style/:basename.:extension', {
                         styles: { slide: '1100x390#' },
                         convert_options: { all: lambda { |inst| "-strip -auto-orient -colorspace sRGB -quality 80#{ ' -interlace Plane' if inst.attachment_background_file_name.index('.gif').nil? }" } },
                         default_style: :slide
                       })
  
  def description(lang)
    lang.include?('en') ? description_en : description_cn 
  end

  def title(lang)
    lang.include?('en') ? title_en : title_cn 
  end
end
