module PagesHelper
	def nav_items
		{"About QPC" => "summary",
      "Services" => "services",
      "Consulting" => "consulting",
      "Real Estate" => "investment",
      "Contact Us" => "contact"}
	end

	def cities
		["New York", "Shanghai", "Washington D.C.", "Hangzhou"]
	end

	def strategic_actions
		["Investor Road Shows  >>",
			"Investment Targeting  >>",
			"Strategic Partnerships  >>",
			"Due Diligence  >>",
			"Government Regulation  >>",
			"Financial Services  >>",
			"Legal Services  >>",
			"Deal Structuring  >>",
			"Negotiations  >>",
			"Deal Finalization  >>",
			"Implementation  >>"]
	end

	def china_office
		[
			"Identify and source clients",
			"Determine client requirements",
			"Present opportunities to clients",
			"Identify and explain cultural, accounting and legal differences",
			"Oversee transactions",
			"Continue assistance once transactions are completed"
		]
	end

	def usa_office
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
