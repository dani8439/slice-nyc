class CheesesController < ApplicationController
  before_action :require_login, except: [:index, :show]

  def index
    @cheeses = Cheese.all
  end

  def show
    @cheese = Cheese.find_by(id: params[:id])
  end


end
