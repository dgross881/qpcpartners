namespace :sliders do 
  task create: :environment do

     Slide.create(attachment_background: image_attachment('bg-lg-blue.jpg'), 
                  attachment: image_attachment('clean-water.jpg'),
                  title_en: 'HempWood', 
                  description_en: 'Patented process utalizing industrial hemp stalks and agricultural based bonding agents to create a 100% eco-friendly wood subsitute. Currently raising capital to build a USA manufacturing facility.', 
                  title_cn: 'HempWood',
                  description_cn: 'Patented process utalizing industrial hemp stalks and agricultural based bonding agents to create a 100% eco-friendly wood subsitute. Currently raising capital to build a USA manufacturing facility.'
                )

     Slide.create(attachment_background: image_attachment('bg-lg-green.jpg'), 
                  attachment: image_attachment('bionic-eye-carousel.png'),
                  title_en: 'SmartOak Ltd Pty',
                  description_en: 'Ecologically friendly building materials produced from Tasmanian Oak www.smartkoak.com.au. Currently developing the Australian SmartOak flooring, board, stair, and furniture market. Wholly owned Tasmanian factory planned once market demand justifies.',
                  title_cn: 'SmartOak Ltd Pty', 
                  description_cn: 'Ecologically friendly building materials produced from Tasmanian Oak www.smartkoak.com.au. Currently developing the Australian SmartOak flooring, board, stair, and furniture market. Wholly owned Tasmanian factory planned once market demand justifies.'
                 )

     Slide.create(attachment_background: image_attachment('bg-lg-red.jpg'), 
                  attachment: image_attachment('fundraising-carousel.png'),
                  title_en: 'Real-Estate Investment Projects',
                  title_cn: 'Real-Estate Investment Projects',
                  description_en: 'Licensed Maryland real estate agent focusing on Montgomery, Prince Georges, Anne Arunel, and Howard County. Currently looking for commerical or residential investment properties.',
                  description_cn: 'Licensed Maryland real estate agent focusing on Montgomery, Prince Georges, Anne Arunel, and Howard County. Currently looking for commerical or residential investment properties.'
                  )
  end
end

def image_attachment(attach)
 images_path = Pathname.new(File.dirname(__FILE__)) + "../../app/assets/images/#{attach}"
 return false unless File.exist?(images_path)
 File.open(images_path)
end
