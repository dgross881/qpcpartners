# encoding: utf-8

module PropertiesHelper
	def self.current_properties
		[{ 
			:cn => {
				:area => "Silver Spring, MD", :type => "Single-Family Home", :size => "", :beds => "", :bath => "",
				:image => "silverspring2.png", :desc => "This property is located in Silver Spring, MD approximately 1 mile from the Washington DC city limits and 0.5 miles from the metro station. The picture is of the property at time of auction purchase. Remodeling of the property is expected to be complete August 2014."
			},
			:en => {
				:area => "Silver Spring, MD", :type => "Single-Family Home", :size => "", :beds => "", :bath => "",
				:image => "silverspring2.png", :desc => "This property is located in Silver Spring, MD approximately 1 mile from the Washington DC city limits and 0.5 miles from the metro station. The picture is of the property at time of auction purchase. Remodeling of the property is expected to be complete August 2014."
			}
		},
		{ 
			:cn => {
				:area => "Silver Spring, MD", :type => "Single-Family Home", :size => "", :beds => "", :bath => "",
				:image => "silverspring.png", :desc => "This property is located in the Woodside neighborhood of Silver Spring, MD approximately 0.5 miles from the Washington DC city limits and the metro station. The picture is of the property at time of auction purchase. Remodeling of the property is expected to be complete August 2014."
			},
			:en => {
				:area => "Silver Spring, MD", :type => "Single-Family Home", :size => "", :beds => "", :bath => "",
				:image => "silverspring.png", :desc => "This property is located in the Woodside neighborhood of Silver Spring, MD approximately 0.5 miles from the Washington DC city limits and the metro station. The picture is of the property at time of auction purchase. Remodeling of the property is expected to be complete August 2014."
			}
		}]
	end

	def self.recent_properties
		[{ 
			:cn => {
				:area => "Forest Glen Park", :type => "别墅", :size => "233平米", :beds => "3", :bath => "2.5",
				:image => "forestglen.png", :desc => "这套房产是位于华盛顿大都会区的国家公园学院历史上著名的街区, 地段周围公园环绕, 树木繁茂,\
							距离华盛顿大都会区1.5公里, 距离地铁站1公里。这个独特的位置,\
							坐落在国家公园及邻近新近装修的高档住宅区。该物业目前状况较差, 没有人居住的"
			},
			:en => {
				:area => "Forest Glen Park", :type => "Single Family Home", :size => "2506 sq.ft.", :beds => "3", :bath => "2.5",
				:image => "forestglen.png", :desc => "This property is located in the National Park Seminary historic neighborhood of greater Washington DC and is surrounded by parks and wooded lots, located approximately 1.5 miles from the Washington DC city limits and 1 mile from the metro station. This exclusive location is situated in a national park and adjacent to recently renovated high-end housing complexes."
			}
		}]
	end
end