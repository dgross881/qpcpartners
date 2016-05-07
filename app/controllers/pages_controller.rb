class PagesController < ApplicationController
  helper :all
  
  def home
    @index = true
  end

  def summary
  end

  def services
    @services = Service.all
  end

  def consulting
  end

  def real_estate
  end

  def investment
  end

  def contact
  end

end
