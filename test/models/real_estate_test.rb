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

require 'test_helper'

class RealEstateTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
