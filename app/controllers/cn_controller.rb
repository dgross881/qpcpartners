class CnController < ApplicationController
  layout 'chinese'
  
  def index
    @index = true
  	@cn = true
  end

  def summary
  	@cn = true
  end

  def core
  	@cn = true
  end

  def services
  	@cn = true
  end

  def consulting
  	@cn = true
  end

  def investment
  	@cn = true
  end

  def contact
  	@cn = true
    @contact = Contact.new
  end

  private

end
