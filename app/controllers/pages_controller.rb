class PagesController < ApplicationController
  helper :all

  def home
    @index = true
    @sliders = Slide.all 
  end

  def summary
  end

  def services
    @services = Service.all
  end

  def current_trade
  end

  def real_estate
    @real_estate_recent = RealEstate.recent
    @real_estate_unrecent = RealEstate.not_recent
  end

  def investment
    @investments = Investment.all
  end

  def contact
  end
end
