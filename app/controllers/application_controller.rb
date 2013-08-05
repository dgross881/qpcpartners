class ApplicationController < ActionController::Base
  protect_from_forgery
  # Rails.env == "production" ? before_filter(:define_domain) : nil

  private

  def define_domain
  	params[:host] = "http://www.qpcpartners.com"
  	redirect_to url_for(params), :status => 301
  end
end
