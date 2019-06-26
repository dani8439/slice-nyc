class PiesController < ApplicationController
  before_action :require_login, except: [:index, :show]

  def index
    @pies = Pie.all
  end

  def new
    @pie = Pie.new
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
    @category = @pie.category
    @crust = @pie.crust
    @sauce = @pie.sauce
  end

  def edit
    @pie = Pie.find_by(id: params[:id])
  end

  def update
    @pie = Pie.find_by(id: params[:id])
    if @pie.update(pie_params)
      redirect_to @pie
    else
      render :edit
    end
  end

  private

  def pie_params
    params.require(:pie).permit(:name, :category_id, :sauce_id, :crust_id, cheese_ids: [], topping_ids: [], restaurant_ids: [])
  end

end
