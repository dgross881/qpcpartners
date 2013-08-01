class PagesController < ApplicationController
  
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
    @contact = Contact.new
  end

end
