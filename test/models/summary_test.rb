# == Schema Information
#
# Table name: summaries
#
#  id         :integer          not null, primary key
#  body       :text
#  publish    :boolean          default("f")
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class SummaryTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end