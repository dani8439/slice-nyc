class CrustsController < ApplicationController
  before_action :require_login, except: [:index, :show]

  def index
    @crusts = Crust.all
  end

  def new
    flash[:alert] = "You don't have access to that feature."
    redirect_to crusts_path
  end

  def show
    @crust = Crust.find_by(id: params[:id])
  end


end
