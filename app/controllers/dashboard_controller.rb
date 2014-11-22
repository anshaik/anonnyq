class DashboardController < ApplicationController
  def index
  	unless user_signed_in?
  		redirect_to new_user_session_path, danger: "You must be signed in to access your dashboard."
  	end
  end

  def schedule
  	render layout: "student/layouts/application"
  end

  def lessons
    
  end

  def lesson
    
  end

  def lesson_detail
    
  end

  def blog
    
  end

  def blog_post
    
  end
end
