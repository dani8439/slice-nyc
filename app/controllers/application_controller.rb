class ApplicationController < ActionController::Base
  include SessionsHelper
  include CheesesHelper

  def require_login
    unless logged_in?
      flash[:alert] = "You must be logged in to do that!"
      redirect_to login_path
    end
  end

end
