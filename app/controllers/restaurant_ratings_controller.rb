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
    @restaurant_rating = @user.restaurant_ratings.build
    @pies = @restaurant.pies
    # @restaurant_rating = RestaurantRating.new
  end

  def create
    @restaurant = Restaurant.find(params[:restaurant_id])
    # @restaurant_rating = RestaurantRating.create(restaurant_rating_params)
    @restaurant_rating = @user.restaurant_ratings.build(restaurant_rating_params)
    # @restaurant_rating = @restaurant.restaurant_ratings.build(restaurant_rating_params)

    if @restaurant_rating.save
      redirect_to restaurant_restaurant_rating_path(@restaurant_rating)
      # (@restaurant, @restaurant_rating)??
    else
      @pies = @restaurant.pies
      render :new
    end
  end

  def edit
    @restaurant_rating = RestaurantRating.find_by(id: params[:id])
  end

  def update
    @restaurant_rating = RestaurantRating.find_by(id: params[:id])

    if @restaurant_rating.update(restaurant_rating_params)
      redirect_to restaurant_restaurant_rating_path(@restaurant_rating)
    else
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
end
