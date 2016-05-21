def has_image(name, type="jpg")
  images_path = Pathname.new(File.dirname(__FILE__)) + "../app/assets/images"
  path = images_path + "#{name}.#{type}"
  return false if !File.exist?(path)
  File.open(path)
end

Service.create(title_cn: '客户/投资者巡回指导',  description_cn: '上海办事处在上海，杭州，苏州进行巡回指导，继而扩展到更多中国的二线城市', title_en: "Investor Road Shows", description_en: "QPC conducts Investor Road Shows throughout the key markets of the Yangzi River Delta Region –– Shanghai, Suzhou, Nanjing, Hangzhou and Ningbo.")

Service.create(title_cn: "项目目标",  description_cn: "纽约办公室将集中发掘在美国东北部的三角:波士顿 - 华盛顿-芝加哥及相连地区范围内所有领域的潜在机会", title_en: "Investment Targeting", description_en: "We target investment in the financial hotspots of the U.S. Northeast Region –– New York, Boston, Washington DC, Philadelphia and Chicago.")

Service.create(title_cn: "战略合作伙伴关联",  description_cn: "已在美国确认第三方会计及律师事务所将对机遇提供的精确观点",  title_en: "Strategic Partnerships", description_en:  "Our partnerships with prominent accounting and law firms, as well as financial services providers, throughout the United States and China allow us to provide our clients with the highest quality services available to any company, anywhere in the world.")

Service.create(title_cn: "尽职监督",  description_cn: "360º尽职监督",  title_en: "Due Diligence",  description_en:  "We provide steadfast book-keeping and auditing services for our clients.  Ensuring accurate and trustworthy records.")

Service.create(title_cn: "政府监管",  description_cn: "将从三方面入手，法律，财务和运营",  title_en: "Government Regulation", description_en: "Quantum Perspective Consultancy is constantly updating its practices to conform with evolving legal, financial and operational regulations, both in the U.S. and in China.")

Service.create(title_cn: "财务服务",  description_cn: "QPC将对部分特定业务或投资领域提供监管建议", title_en: "Financial Services", description_en: "QPC is able to provide regulatory advice for specific investment fields, to help clients make important financial decisions in an educated and informed manner.")
#Service.create(title_cn: "司法咨询",  description_cn: "QPC将进行多方促成，并为谈判创造各种机会",  title_en: , description_en: )
#
Service.create(title_cn: "交易结构", description_cn: "360º尽职监督", title_en: "Legal Services", description_en: "Strategic partnerships with corporate and business law offices and practitioners guarantee that our clients never find themselves without a legal footing, but rather are empowered by our decades of experience.")

Service.create(title_cn: "谈判", description_cn: "QPC将为个人提供谈判能力", title_en: "Deal Structuring", description_en: "We conduct 360 due diligence, in all cases, for all of our clients.")

Service.create(title_cn: "并购交易", description_cn:  "QPC的核心竞争力", title_en: "Negotiations", description_en: "Quantum Perspective Consultancy Partners takes great pride in securing the best possible deals for our clients. We can handles negotiations on a client's behalf or coach and assist them in negotiating their own deals. We also provide high-quality translation services to all of our clients")

Service.create(title_cn: "执行", description_cn:  "谈判结束后，QPC为客户提供服务以执行交易", title_en: "Deal Finalization", description_en: "We continue to work closely with our clients through the deal finalization phase, dealing with any and all issues that may arise during that time, to ensure that all deals reach a successful agreement.")

Service.create(title_cn: "谈判", description_cn:  "QPC将为个人提供谈判能力", title_en: "Implementation", description_en:  "Our years of experience and technical knowledge are invaluable assets to companies of all sizes during the implementation phase of successful overseas business expansions.")


RealEstate.create(description_en: 'This property is located in Silver Spring, MD approximately 1 mile from the Washington DC city limits and 0.5 miles from the metro station. The picture is of the property at time of auction purchase. Remodeling of the property is expected to be complete August 2014.', description_cn: 'This property is located in Silver Spring, MD approximately 1 mile from the Washington DC city limits and 0.5 miles from the metro station. The picture is of the property at time of auction purchase. Remodeling of the property is expected to be complete August 2014.', area_en: 'Silver Spring, MD', area_cn: 'Silver Spring, MD', type_en: 'Single-Family Home', type_cn: 'Single-Family Home', attachment: has_image('silverspring2', 'png'))


RealEstate.create(description_en: 'This property is located in the Woodside neighborhood of Silver Spring, MD approximately 0.5 miles from the Washington DC city limits and the metro station. The picture is of the property at time of auction purchase. Remodeling of the property is expected to be complete August 2014.', description_cn: 'This property is located in the Woodside neighborhood of Silver Spring, MD approximately 0.5 miles from the Washington DC city limits and the metro station. The picture is of the property at time of auction purchase. Remodeling of the property is expected to be complete August 2014.', area_en: 'Silver Spring, MD', area_cn: 'Silver Spring, MD', type_en: 'Single-Family Home', type_cn: 'Single-Family Home', attachment: has_image('silverspring', 'png'))

RealEstate.create(description_en: 'This property is located in the National Park Seminary historic neighborhood of greater Washington DC and is surrounded by parks and wooded lots, located approximately 1.5 miles from the Washington DC city limits and 1 mile from the metro station. This exclusive location is situated in a national park and adjacent to recently renovated high-end housing complexes.', description_cn: '这套房产是位于华盛顿大都会区的国家公园学院历史上著名的街区, 地段周围公园环绕, 树木繁茂,距离华盛顿大都会区1.5公里, 距离地铁站1公é。这个独特的位置,坐落在国家公园及邻近新近装修ç高档住宅区。该物业目前状况较差, 没有人居住的', area_en: 'Forest Glen Park', area_cn: 'Forest Glen Park', size_en: '2506 sq.ft', size_cn: '2506 sq.ft', beds: 3, baths: '2.5', attachment: has_image('forestglen'), recent_project: true)

