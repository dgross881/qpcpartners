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
				"不动产项目" => "investment",
				"联系我们" => "contact"
		} }
	end

	def self.cn_services_hash
		{ "services" => {
				"客户/投资者巡回指导" => "上海办事处在上海，杭州，苏州进行巡回指导，继而扩展到更多中国的二线城市",
				"项目目标" => "纽约办公室将集中发掘在美国东北部的三角:波士顿 - 华盛顿-芝加哥及相连地区范围内所有领域的潜在机会",
				"战略合作伙伴关联" => "已在美国确认第三方会计及律师事务所将对机遇提供的精确观点",
				"尽职监督" => "360º尽职监督",
				"政府监管" => "将从三方面入手，法律，财务和运营",
				"财务服务" => "QPC将对部分特定业务或投资领域提供监管建议",
				"司法咨询" => "QPC将进行多方促成，并为谈判创造各种机会",
				"交易结构" => "360º尽职监督",
				"谈判" => "QPC将为个人提供谈判能力",
				"并购交易" => "QPC的核心竞争力",
				"执行" => "谈判结束后，QPC为客户提供服务以执行交易"
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