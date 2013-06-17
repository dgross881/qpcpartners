# encoding: utf-8


module CnHelper

	def cn_nav_items
		{"执行摘要" => "summary",
      "核心能力" => "core",
      "业务服务" => "services",
      "咨询项目" => "consulting",
      "不动产项目" => "investment",
      "联系我们" => "contact"}
	end

	def cn_cities
		 ["纽约", "上海", "华盛顿", "杭州"]
	end

	def cn_strategic_actions
		[
			"Investor Road Shows",
			"Investment Targeting",
			"Strategic Partnerships",
			"Due Diligence",
			"Government Regulation",
			"Financial Services",
			"Legal Services",
			"Deal Structuring",
			"Negotiations",
			"Deal Finalization",
			"Implementation"
		]
	end

	def cn_china_office
		[
			"Identify and source clients",
			"Determine client requirements",
			"Present opportunities to clients",
			"Identify and explain cultural, accounting and legal differences",
			"Oversee transactions",
			"Continue assistance once transactions are completed"
		]
	end

	def cn_usa_office
		[
			"Identify opportunities and growth potential",
			"Conduct due diligence on opportunities",
			"Conduct site visits and interview staff",
			"Evaluate opportunities",
			"Investigate financial and legal positions",
			"Compile project portfolios for presentation to clients",
			"Oversee transactions",
			"Continue assistance once transactions are completed"
		]
	end
end
