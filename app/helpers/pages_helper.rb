# encoding: utf-8
module PagesHelper
	
	def locale
		LocalizationHelper.Localizer
	end

	 def current_url
    request.original_url
  end

  def chinese?
    current_url.include? '/cn'
  end

end
