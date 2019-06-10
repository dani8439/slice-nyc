class RestaurantRatingsController < ApplicationController
  before_action :require_login
  before_action :set_current_user, only: [:new, :create]

  def index
    @restaurant_ratings = RestaurantRating.where("user_id=?", params[:user_id])
    # @restaurant_ratings = RestaurantRating.where("restaurant_id =?", params[:restaurant_id])

  end

  def show
    find_restaurant
    @restaurant_rating = RestaurantRating.find_by(id: params[:id])
  end

  def new
    find_restaurant
    @restaurant_rating = @user.restaurant_ratings.build
    @pies = @restaurant.pies

  end

  def create
    find_restaurant
    @restaurant_rating = @user.restaurant_ratings.build(restaurant_rating_params)
    @restaurant_rating.restaurant_id = params[:restaurant_id] if params[:restaurant_id]

    if @restaurant_rating.save
      redirect_to restaurant_restaurant_rating_path(@restaurant, @restaurant_rating)
    else
      @pies = @restaurant.pies
      render :new
    end
  end

  def edit
    find_restaurant
    @restaurant_rating = RestaurantRating.find_by(id: params[:id])
    @pies = @restaurant.pies
  end

  def update
    find_restaurant
    @restaurant_rating = RestaurantRating.find_by(id: params[:id])

    if @restaurant_rating.update(restaurant_rating_params)
      redirect_to restaurant_restaurant_rating_path(@restaurant, @restaurant_rating)
    else
      @pies = @restaurant.pies
      render :edit
    end
  end


  private

  def restaurant_rating_params
    params.require(:restaurant_rating).permit(:restaurant_id, :food_score, :service_score, :atmosphere_score, :comments)
  end

  def set_current_user
    @user = current_user
  end

  def find_restaurant
    @restaurant = Restaurant.find(params[:restaurant_id])
  end
end
