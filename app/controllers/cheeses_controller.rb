class CheesesController < ApplicationController
  before_action :require_login, except: [:index, :show]

  def index
    @cheeses = Cheese.all
  end

  def new
    flash[:alert] = "You do not have access to that feature."
    redirect_to cheeses_path
  end

  def show
    @cheese = Cheese.find_by(id: params[:id])
  end


end
