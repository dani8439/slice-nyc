class UserRestaurantsController < ApplicationController

  def show
    @user_restaurant = UserRestaurant.find_by(id: params[:id])
  end

  def create
  end

  def edit
  end

  def destroy
  end
end
