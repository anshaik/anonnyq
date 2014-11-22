class Teacher::TeacherController < ApplicationController
  layout 'teacher/layouts/application.html.erb'
  before_action :authenticate_user!
  before_action :check_admin

  def index
    
  end

  private

  def check_admin
    # if user is logged in and not an admin
    redirect_to student_dashboard_path unless current_user.admin?
  end
end
