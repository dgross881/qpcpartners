class ApplicationController < ActionController::Base
  protect_from_forgery
  Rails.env == "production" ? before_filter(:define_domain) : nil

  private

  def define_domain
  	host = "www.qpcpartners.com"
  	if !params[:host] == host
  		request[:host] = host
  		redirect_to url_for(params), :status => 301
  end
end
