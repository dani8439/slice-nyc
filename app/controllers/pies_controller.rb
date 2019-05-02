class PiesController < ApplicationController

  def index
    @pies = Pie.all
  end

  def new
    @pie = Pie.new
    @category = Category.all
    @cheese = Cheese.all
    @sauce = Sauce.all
    @toppings = Topping.all
  end

  def create
  end

  def show
    @pie = Pie.find_by(id: params[:id])
  end

  private

  def pie_params
    params.require(:pie).permit(:name, :crust, cheese_ids: [], topping_ids: [])
  end
end
