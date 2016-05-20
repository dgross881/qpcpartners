# == Schema Information
#
# Table name: services
#
#  id             :integer          not null, primary key
#  title_en       :string
#  description_en :text
#  title_cn       :string
#  description_cn :string
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

class Service < ActiveRecord::Base

 def title(lang)
  lang.include?('en') ? title_en : title_cn 
 end

 def description(lang)
  lang.include?('en') ? description_en : description_cn 
 end
end
