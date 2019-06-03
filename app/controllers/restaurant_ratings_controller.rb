class RestaurantRatingsController < ApplicationController
  before_action :require_login
  before_action :set_current_user, only: [:new, :create]

  def index
    @restaurant_ratings = RestaurantRating.all

  end

  def show
    @restaurant_rating = RestaurantRating.find_by(id: params[:id])
  end

  def new

    # raise params.inspect

    @restaurant = Restaurant.find_by(id: params[:id])
    @pies = Pie.all
    @restaurant_rating = RestaurantRating.new
    # @restaurant_rating = @user.restaurant_ratings.build
  end

  def create
    @restaurant_rating = @user.restaurant_ratings.build(restaurant_rating_params)

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
    params.require(:restaurant_rating).permit(:user_id, :restaurant_id, :rating, :comments, pie_rating_ids: [])
  end

  def set_current_user
    @user = current_user
  end
end
