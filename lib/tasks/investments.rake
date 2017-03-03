namespace :investments do 
  task create: :environment do
    water = "<h2><a href='http://www.environmental-expert.com/companies/maritime-solutions-inc-756'>Maritime Solutions Inc.’s
                                   </a>safe, environmentally-sound shipboard ballast water treatment system (BWT System) (patented)</h2>
                                   <br>
                                   <p>Solution addresses the global ballast water problem of the shipping industry that caused contamination of the world’s harbors and waterways by delivering aquatic nuisance species during ship ballast operations (taking on or discharging water to balance ships).</p>
                                   <div class='well'>
                                     Current ballastwater transfers between geographic regions destroy local and regional coastal and waterway ecosystems and has an estimated multi-billon dollar negative economic impact.
                                   </div>
                                    <h5>QPC Partners is raising $3m USD to fund commercialization of the project.</h5>"

    Investment.create(description_en: water, description_cn: water)

    bionic_eye = "<h2><a href='http://www.bostonretinalimplant.org/'>	Bionic Eye Technologies Inc.</a></h2>
              <br>
              <p>	Bionic Eye is developing a retinal prosthesis that is designed to be used in the sub-retinal space. This approach offers advantages over the competing epiretinal devices in that our approach seems to provide reduced risk of eye infection, reduced risk of erosion through the delicate tissues that cover the front surface of the eye (i.e. the conjunctiva), and the ability to place our stimulating electrodes closer to the retinal nerve cells, which should improve the safety of the device and also enhance the visual outcome.</p>"                                    
    Investment.create(description_en: bionic_eye, description_cn: bionic_eye)
  end
end
