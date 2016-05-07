#encoding: utf-8
module CnHelper
	def self.cn_wrap
		{ 'cn' => stack.inject({}) { |result, nex| result.merge(nex) } }
	end

	private

	def self.stack
		[
			cn_nav_items_hash, 
			cn_services_hash, 
			cn_china_office_abilities, 
			cn_usa_office_abilities
		]
	end

	def self.cn_nav_items_hash
		{ "nav_items" => { 
				"执行摘要" => "summary",
				"业务服务" => "services",
				"咨询项目" => "consulting",
				"不动产项目" => "real_estate",
				"投资项目" => "investment",
				"联系我们" => "contact"
		} }
	end

	def self.cn_china_office_abilities
		{ "china_office_abilities" =>
			[
				"识别客户资源",
				"明确客户需求",
				"向客户提供机会",
				"明确并解释文化，会计和法律的差异",
				"监督交易",
				"交易完成后继续提供咨商"
			]
		}
	end

	def self.cn_usa_office_abilities
		{ "usa_office_abilities" => 
			[
				"寻找机会和增长潜力",
				"进行全面的机会调查",
				"进行实地考察和面试人员",
				"评估机会",
				"调查财务和法律地位",
				"编译提交给客户的投资项目组合",
				"监督交易",
				"交易完成后继续提供咨商"
			]
		}
	end

end
