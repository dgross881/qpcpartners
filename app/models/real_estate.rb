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
#  recent_project          :boolean          default("false")
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
                         convert_options: { all: '-strip -auto-orient -colorspace sRGB -quality 80 -interlace Plane' },
                         default_style: :small
                       })

  validates_attachment_content_type :attachment, content_type: [/\Aimage/, 'application/octet-stream']

  before_post_process :set_content_type

  def set_content_type
    self.attachment.instance_write('Content-Type', MIME::Types.type_for(self.attachment_file_name).first.to_s)
  end
end
