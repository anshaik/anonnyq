class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  add_flash_types :success, :danger, :warning, :info
  before_action :subscribe

  def subscribe
  	@subscribe = EmailSubscriber.new
  end

  def after_sign_in_path_for(resource)
    if current_user.profile
    	student_dashboard_path
    else
      apply_path
    end
  end
end
