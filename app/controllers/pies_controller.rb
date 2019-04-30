class PiesController < ApplicationController

  def index
    @pies = Pie.all
  end

  def new
    @pie = Pie.new
  end

  def show
    @pie = Pie.find_by(id: params[:id])
  end

  private

  def pie_params
    params.require(:pie).permit(:name, :crust, :cheese)
  end
end
