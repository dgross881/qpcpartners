# == Schema Information
#
# Table name: current_trades
#
#  id                      :integer          not null, primary key
#  title_en                :string
#  title_cn                :string
#  description_en          :string
#  description_cn          :text
#  attachment_file_name    :string
#  attachment_content_type :string
#  attachment_file_size    :integer
#  attachment_updated_at   :datetime
#  created_at              :datetime         not null
#  updated_at              :datetime         not null
#

class CurrentTrade < ApplicationRecord
  include AttachedFileModule

  attached_file_module(:attachment, '/current_trade/:basename/:style/:basename.:extension', {
                         styles: { mini: '200x134>', small: '400x268>', house: '700x469>'},
                         google_headers: lambda { |attachment|
                                  { 'Content-Type' => attachment.content_type,
                                    'Content-Disposition' => "attachment; filename=#{attachment.original_filename}"
                                  }
                                },
                         convert_options: { all: '-strip -auto-orient -colorspace sRGB -quality 80 -interlace Plane' },
                         default_style: :small
                       })
end
