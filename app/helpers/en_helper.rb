#encoding: utf-8
module EnHelper
	def self.en_wrap
		{
			"en" => stack.inject({}) { |result, nex| result.merge(nex) }
		}
	end

	private

	def self.stack
		[
			nav_items_hash, 
			services_hash, 
			china_office_abilities, 
			usa_office_abilities
		]
	end

	def self.nav_items_hash
		{ "nav_items" => {
				"About QPC" => "summary",
				"Services" => "services",
				"Consulting" => "consulting",
				"Real Estate" => "investment",
				"Contact Us" => "contact"
		} }
	end

	def self.services_hash
		{ "services" => {
				"Investor Road Shows" => "QPC conducts Investor Road Shows throughout the key markets of the Yangzi River Delta Region –– Shanghai, Suzhou, Nanjing, Hangzhou and Ningbo.",
				"Investment Targeting" => "We target investment in the financial hotspots of the U.S. Northeast Region –– New York, Boston, Washington DC, Philadelphia and Chicago.",
				"Strategic Partnerships" => "Our partnerships with prominent accounting and law firms, as well as financial services providers, throughout the United States and China allow us to provide our clients with the highest quality services available to any company, anywhere in the world.",
				"Due Diligence" => "We provide steadfast book-keeping and auditing services for our clients.  Ensuring accurate and trustworthy records.",
				"Government Regulation" => "Quantum Perspective Consultancy is constantly updating its practices to conform with evolving legal, financial and operational regulations, both in the U.S. and in China.",
				"Financial Services" => "QPC is able to provide regulatory advice for specific investment fields, to help clients make important financial decisions in an educated and informed manner.",
				"Legal Services" => "Strategic partnerships with corporate and business law offices and practitioners guarantee that our clients never find themselves without a legal footing, but rather are empowered by our decades of experience.",
				"Deal Structuring" => "We conduct 360\º due diligence, in all cases, for all of our clients.",
				"Negotiations" => "Quantum Perspective Consultancy Partners takes great pride in securing the best possible deals for our clients. We can handles negotiations on a client's behalf or coach and assist them in negotiating their own deals.  We also provide high-quality translation services to all of our clients",
				"Deal Finalization" => "We continue to work closely with our clients through the deal finalization phase, dealing with any and all issues that may arise during that time, to ensure that all deals reach a successful agreement.",
				"Implementation" => "Our years of experience and technical knowledge are invaluable assets to companies of all sizes during the implementation phase of successful overseas business expansions."
		} }
	end



	def self.china_office_abilities
		{ "china_office_abilities" => [
			"Identify and source clients",
			"Determine client requirements",
			"Present opportunities to clients",
			"Identify and explain cultural, accounting and legal differences",
			"Oversee transactions",
			"Continue assistance once transactions are completed"
		] }
	end

	def self.usa_office_abilities
		{ "usa_office_abilities" => [
			"Identify opportunities and growth potential",
			"Conduct due diligence on opportunities",
			"Conduct site visits and interview staff",
			"Evaluate opportunities",
			"Investigate financial and legal positions",
			"Compile project portfolios for presentation to clients",
			"Oversee transactions",
			"Continue assistance once transactions are completed"
		] }
	end

end