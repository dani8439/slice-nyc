class RestaurantRatingsController < ApplicationController
  before_action :require_login
  before_action :set_current_user, only: [:new, :create]

  def index
    @restaurant_ratings = RestaurantRating.where("user_id=?", current_user)

  end

  def show
    find_restaurant
    find_rating
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
    find_rating
    @pies = @restaurant.pies
  end

  def update
    find_restaurant
    find_rating

    if @restaurant_rating.update(restaurant_rating_params)
      redirect_to restaurant_restaurant_rating_path(@restaurant, @restaurant_rating)
    else
      @pies = @restaurant.pies
      render :edit
    end
  end

  def destroy
    @restaurant_rating = RestaurantRating.find_by(id: params[:id])

    @restaurant_rating.delete

    redirect_to restaurant_ratings_path
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

  def find_rating
    @restaurant_rating = RestaurantRating.find_by(id: params[:id])
  end
end
