class PieRatingsController < ApplicationController
  before_action :require_login

  def index
  end

  def new
    @user = current_user
    @restaurant = Restaurant.all
    @pie_rating = PieRating.new
    #@pie_rating = @user.pie_ratings.build
  end

  def create
    #@pie_rating = @user.pie_ratings.build(pie_rating_params)
    @pie_rating = PieRating.create(pie_rating_params)

    if @pie_rating.save
      redirect_to pie_rating_path(@pie_rating)
    else
      render :new
    end
  end

  def show
  end

  private
  def pie_rating_params
    params.require(:pie_rating).permit(:pie_id, :user_id, :taste_score, :comments)
  end

end
