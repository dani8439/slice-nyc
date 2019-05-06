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
    @pie = Pie.new(pie_params)

    if @pie.save
      redirect_to @pie
    else
      render :new
    end
  end

  def show
    @pie = Pie.find_by(id: params[:id])
  end

  private

  def pie_params
    params.require(:pie).permit(:name, :category_id, :sauce_id, :crust_id, cheese_ids: [], topping_ids: [], ) 
  end
end
