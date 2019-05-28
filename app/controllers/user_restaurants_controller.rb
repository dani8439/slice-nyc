class UserRestaurantsController < ApplicationController
  before_action :require_login

  def show
    @user_restaurant = UserRestaurant.find_by(id: params[:id])
  end

  def create
    @user_restaurant = UserRestaurant.create(user_restaurant_params)

    if @user_restaurant.save
      redirect_to @user_restaurant
    else
      render :new
    end
  end

  def edit
  end

  def destroy
  end

  private

  def user_restaurant_params
    params.require(:user_restaurant).permit(:user_id, :restaurant_id)
  end


end
