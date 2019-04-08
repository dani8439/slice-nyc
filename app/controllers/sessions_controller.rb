class SessionsController < ApplicationController
  def new
  end

  def create
    if auth_hash = request.env["omniauth.auth"]
      # render :text => auth_hash.inspect -- see notes in Users Model
      user = User.find_or_create_by_omniauth(auth_hash)
      session[:user_id] = user.id

      redirect_to root_path
    else
      user = User.find_by(email: params[:user][:email])

      if user && user.authenticate(params[:user][:password])
        session[:user_id] = user.id

        redirect_to root_path
      else
        render :new
      end
    end
  end

  def destroy
    session[:user_id] = nil
    render :text => "You've logged out!"
  end

  private

  def auth
    request.env['omniauth.auth']
  end
end
