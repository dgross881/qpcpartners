class Service < ActiveRecord::Base

 def title(lang)
  lang.include?('en') ? title_en : title_cn 
 end

 def description(lang)
  lang.include?('en') ? description_en : description_cn 
 end
end
