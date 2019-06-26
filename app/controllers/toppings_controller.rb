class ToppingsController < ApplicationController
  before_action :require_login, except: [:index, :show]

  def index
    @toppings = Topping.all
  end

  def new
    flash[:alert] = "You don't have access to that feature."
    redirect_to toppings_path
  end

  def show
    @topping = Topping.find_by(id: params[:id])
  end


end
