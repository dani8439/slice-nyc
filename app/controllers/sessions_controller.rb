class SessionsController < ApplicationController
  def new
    @user = User.new
  end

  def create
    if auth_hash = request.env["omniauth.auth"]
      user = User.find_or_create_by_omniauth(auth_hash)
      log_in(user)

      flash[:alert] = "Welcome #{user.username}!"
      redirect_to user_path(user)
    else
      user = User.find_by(email: params[:session][:email])

      if user && user.authenticate(params[:session][:password])
        log_in(user)

        flash[:alert] = "Welcome #{user.username.capitalize}!"
        redirect_to user_path(user)
      else
        flash[:error_alert] = "Your email or password is incorrect."
        render :new
      end
    end
  end


  def destroy
    session[:user_id] = nil #or session.delete(:user_id)
    redirect_to root_path
    flash[:alert] = "See you next time!"
  end

  private

  def auth
    request.env['omniauth.auth']
  end
end
