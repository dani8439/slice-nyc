class SaucesController < ApplicationController
  before_action :require_login, except: [:index, :show]

  def index
    @sauces = Sauce.all
  end

  def new
    flash[:alert] = "You don't have access to that feature."
    redirect_to sauces_path
  end

  def show
    @sauce = Sauce.find_by(id: params[:id])
  end

end
