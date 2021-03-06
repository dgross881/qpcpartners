# == Schema Information
#
# Table name: real_estates
#
#  id                      :integer          not null, primary key
#  description_en          :string
#  description_cn          :string
#  area_en                 :string
#  area_cn                 :string
#  type_en                 :string
#  type_cn                 :string
#  size_en                 :string
#  size_cn                 :string
#  beds                    :integer
#  baths                   :integer
#  recent_project          :boolean          default(FALSE)
#  attachment_file_name    :string
#  attachment_content_type :string
#  attachment_file_size    :integer
#  attachment_updated_at   :datetime
#  created_at              :datetime         not null
#  updated_at              :datetime         not null
#

class RealEstate < ActiveRecord::Base
  scope :recent, -> { where(recent_project: true) }
  scope :not_recent, -> { where(recent_project: false) }

  include AttachedFileModule

  attached_file_module(:attachment, '/real_estate/:basename/:style/:basename.:extension', {
                         styles: { mini: '200x134>', small: '400x268>', house: '700x469>'},
                         google_headers: lambda { |attachment|
                                  { 'Content-Type' => attachment.content_type,
                                    'Content-Disposition' => "attachment; filename=#{attachment.original_filename}"
                                  }
                                },
                         convert_options: { all: '-strip -auto-orient -colorspace sRGB -quality 80 -interlace Plane' },
                         default_style: :small
                       })

  # Validate content type
  validates_attachment_content_type :attachment, :content_type => /\Aimage/

  # Validate filename
  validates_attachment_file_name :attachment, :matches => [/png\Z/, /jpe?g\Z/]

  # Explicitly do not validate
  do_not_validate_attachment_file_type :attachment
end
