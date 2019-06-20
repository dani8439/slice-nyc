class SaucesController < ApplicationController
  before_action :require_login, except: [:index, :show]

  def index
    @sauces = Sauce.all
  end

  def show
    @sauce = Sauce.find_by(id: params[:id])
  end

end
