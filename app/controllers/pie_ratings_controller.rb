class PieRatingsController < ApplicationController
  before_action :require_login

  def index
  end

  def show
    @pie_rating = PieRating.find_by(id: params[:id])
  end

  def new
    @restaurant = Restaurant.find_by(id: params[:id])
    @pie_rating = PieRating.new(:restaurant => @restaurant)
    # @pie_rating = @user.pie_ratings.build
  end

  # method needs to be amended now that restaurant_rating and pie_rating have been joined..
  def create
    @user = current_user
    @pie_rating = @user.pie_ratings.build(pie_rating_params)

    if @pie_rating.save
      redirect_to pie_rating_path(@pie_rating)
    else
      render :new
    end
  end

  def edit
  end


  private
  def pie_rating_params
    params.require(:pie_rating).permit(:pie_id, :taste_score, :comments)
  end

end
