# encoding: utf-8

Dir[File.dirname(__FILE__).to_s + "/languages/*.rb"].each { |f| require(f) }

module LocalizationHelper

	def self.Localizer
		{}.
		merge(CnHelper.cn_wrap).
		merge(EnHelper.en_wrap)
	end
end
