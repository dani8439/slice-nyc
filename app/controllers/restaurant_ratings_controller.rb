class RestaurantRatingsController < ApplicationController
  before_action :require_login

  def index
  end

  def show
  end

  def new
  end

  def edit
  end

  def destroy
  end


  private

  def restaurant_ratings_params
    params.require(:restaurant_rating).permit(:user_id, :restaurant_id, :rating, :comments, pie_rating_ids: [])
  end
end
