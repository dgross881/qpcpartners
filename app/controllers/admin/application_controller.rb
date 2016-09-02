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
      redirect_to new_user_session_path if !current_user
      current_user.has_role?("superadmin") if current_user.present?
    end
  end
end
