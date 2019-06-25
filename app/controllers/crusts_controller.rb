class CrustsController < ApplicationController
  before_action :require_login, except: [:index, :show]

  def index
    @crusts = Crust.all
  end

  def show
    @crust = Crust.find_by(id: params[:id])
  end


end
