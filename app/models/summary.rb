# == Schema Information
#
# Table name: summaries
#
#  id         :integer          not null, primary key
#  body       :text
#  publish    :boolean          default(FALSE)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Summary < ActiveRecord::Base
  #validates :body, precense: true 
end
