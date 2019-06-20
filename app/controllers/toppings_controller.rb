class ToppingsController < ApplicationController
  before_action :require_login, except: [:index, :show]

  def index
    @toppings = Topping.all
  end

  def show
    @topping = Topping.find_by(id: params[:id])
  end

end
