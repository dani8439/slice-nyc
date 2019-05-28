class ApplicationController < ActionController::Base
  include SessionsHelper

  def require_login
    flash[:alert] = "You must be logged in to do that!"
    redirect_to login_path unless logged_in?
  end
end
