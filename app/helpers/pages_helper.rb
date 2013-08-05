# encoding: utf-8
module PagesHelper
	def nav_items
		{
			"About QPC" => "summary",
			"Services" => "services",
			"Consulting" => "consulting",
			"Real Estate" => "investment",
			"Contact Us" => "contact"
		}
	end

	def services
		{
			"Investor Road Shows" => "QPC conducts Investor Road Shows throughout the key markets of the Yangzi River Delta Region –– Shanghai, Suzhou, Nanjing, Hangzhou and Ningbo.",
			"Investment Targeting" => "We target investment in the financial hotspots of the U.S. Northeast Region –– New York, Boston, Washington DC, Philadelphia and Chicago.",
			"Strategic Partnerships" => "Our partnerships with prominent accounting and law firms, as well as financial services providers, throughout the United States and China allow us to provide our clients with the highest quality services available to any company, anywhere in the world.",
			"Due Diligence" => "We provide steadfast book-keeping and auditing services for our clients.  Ensuring accurate and trustworthy records.",
			"Government Regulation" => "Quantum Perspective Consultancy is constantly updating its practices to conform with evolving legal, financial and operational regulations, both in the U.S. and in China.",
			"Financial Services" => "QPC is able to provide regulatory advice for specific investment fields, to help clients make important financial decisions in an educated and informed manner.",
			"Legal Services" => "Strategic partnerships with corporate and business law offices and practitioners guarantee that our clients never find themselves without a legal footing, but rather are empowered by our decades of experience.",
			"Deal Structuring" => "We are constantly conducting 360\º due diligence, in all cases, for all of our clients. When it comes time to structuring a deal, clients are left with no 'surprises'.",
			"Negotiations" => "Quantum Perspective Consultancy Partners takes great pride in securing the best possible deals for our clients, and can handle negotiations on our client's behalf or coach and assist clients in negotiating their own deals.  We also provide high-quality translation services to all of our clients",
			"Deal Finalization" => "We continue to work closely with our clients through the deal finalization phase, dealing with any and all issues that may arise during that time, to ensure that all deals reach a successful agreement.",
			"Implementation" => "Our years of experience and technical knowledge are invaluable assets to companies of all sizes during the implementation phase of successful overseas business expansions."
		}
	end

	def number_helper i
		{
			1 => "One",
			2 => "Two",
			3 => "Three",
			4 => "Four",
			5 => "Five",
			6 => "Six",
			7 => "Seven",
			8 => "Eight",
			9 => "Nine",
			10 => "Ten"
		}[i]
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
