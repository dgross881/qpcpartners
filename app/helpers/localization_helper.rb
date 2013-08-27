# encoding: utf-8

module LocalizationHelper

	def self.Localizer
		{}.
		merge(CnHelper.cn_wrap).
		merge(EnHelper.en_wrap)
	end
end
