class PagesController < ApplicationController
  before_filter :localize
  helper :all
  
  def index
    @index = true
  end

  def summary
  end

  def core
  end

  def services
  end

  def consulting
  end

  def investment
  end

  def contact
  end

  private

  def current_url
    request.original_url
  end

  def localize
    if current_url.include? '/cn' then @cn = true else @cn = false end
  end

end
