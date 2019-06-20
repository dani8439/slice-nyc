class ToppingsController < ApplicationController
  before_action :require_login, except: [:index]

  def index
    @toppings = Topping.all
  end


end
