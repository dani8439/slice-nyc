module SessionsHelper

  def log_in(user)
    session[:user_id] = user.id
  end

  def current_user
    if session[:user_id]
      @current_user ||= User.find_by(id: session[:user_id])
    end
  end

  def logged_in?
    !!current_user
  end

  def require_login  #is this necessary, have it in applicationcontroller too??
    unless logged_in?
      flash[:alert] = "You must be logged in to do that!"
      redirect_to login_path
    end
  end
end
