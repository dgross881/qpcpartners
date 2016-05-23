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
#  position           :integer          default("0"), not null
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

require 'test_helper'

class SlideTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
