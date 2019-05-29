class ToppingsController < ApplicationController
  before_action :require_login

  def index
    @toppings = Topping.all 
  end
end
