class CheesesController < ApplicationController
  before_action :require_login, except: [:index]

  def index
    @cheeses = Cheese.all
  end

  def show
  end


end
