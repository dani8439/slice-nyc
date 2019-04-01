class UsersController < ApplicationController

  def new
  end

  def create
  end

  def show
    @user = User.find_by(id: params[:id])
  end

  def user_params
    params.require(:user).permit(:username, :email, :password, :password_confirmation)
  end
end
