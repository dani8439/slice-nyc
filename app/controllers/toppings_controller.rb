class ToppingsController < ApplicationController
  before_action :require_login, except: [:index]

  def index
    @toppings = Topping.all
  end


  def show
  end

  def create
  end

  def edit
  end

  def destroy
  end
end
