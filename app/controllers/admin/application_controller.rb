# All Administrate controllers inherit from this `Admin::ApplicationController`,
# making it the ideal place to put authentication logic or other
# before_filters.
#
# If you want to add pagination or other controller-level concerns,
# you're free to overwrite the RESTful controller actions.
module Admin
  class ApplicationController < Administrate::ApplicationController
    before_filter :verify_access

    protected 

    def verify_access
      authenticate_or_request_with_http_basic("Restricted Access") do |username, password|
        username == ENV['ADMIN_NAME'] && password == ENV['ADMIN_PASSWORD']
      end
    end
  end
end
