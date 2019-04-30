class RestaurantsController < ApplicationController

  def index
    @restaurants = Restaurant.all
  end

  def show
    @restaurant = Restaurant.find_by(id: params[:id])
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)

    if @restaurant.save
      redirect_to @restaurant
    else
      render :new
    end
  end

  def edit
  end

  def update
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :neighborhood, :borough, :sit_down_or_take_out, :oven, :multiple_locations, :category_id)
  end
end
