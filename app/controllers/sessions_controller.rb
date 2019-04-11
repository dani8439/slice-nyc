class SessionsController < ApplicationController
  def new
  end

  def create
    # auth_hash = request.env['omniauth.auth']
    # render :text => auth_hash.inspect -- see notes in Users Model

    if auth_hash = request.env["omniauth.auth"]
      user = User.find_or_create_by_omniauth(auth_hash)
      log_in(user)

      redirect_to user_path(user)
    else
      user = User.find_by(email: params[:session][:email])

      if user && user.authenticate(params[:session][:password])
        log_in(user)

        redirect_to user_path(user)
      else
        render :new
      end
    end
  end

  def destroy
    session[:user_id] = nil #or session.delete(:user_id)
    redirect_to root_path
    # render :text => "You've logged out!"
  end

  private

  def auth
    request.env['omniauth.auth']
  end
end
