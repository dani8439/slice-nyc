class RestaurantRatingsController < ApplicationController
  before_action :require_login
  before_action :set_current_user, only: [:new, :create]

  def index
    @restaurant_ratings = RestaurantRating.all
    # @restaurant_ratings = RestaurantRating.where("restaurant_id =?", params[:restaurant_id])

  end

  def show
    @restaurant_rating = RestaurantRating.find_by(id: params[:id])
  end

  def new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @restaurant_rating = RestaurantRating.new
    @pies = @restaurant.pies 
    # @restaurant_rating = @user.restaurant_ratings.build
  end

  def create
    @restaurant = Restaurant.find(params[:restaurant_id])
    @restaurant_rating = @user.restaurant_ratings.build(restaurant_rating_params)

    raise params.inspect

    if @restaurant_rating.save
      redirect_to restaurant_rating_path(@restaurant_rating)
    else
      render :new
    end
  end

  def edit
  end

  def destroy
  end


  private

  def restaurant_rating_params
    params.require(:restaurant_rating).permit(:user_id, :restaurant_id, :taste_score, :service_score, :atmosphere_score, :comments, pie_rating_ids: [])
  end

  def set_current_user
    @user = current_user
  end
end
