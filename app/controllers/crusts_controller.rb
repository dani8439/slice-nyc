class CrustsController < ApplicationController
  before_action :require_login, except: [:index]

  def index
    @crusts = Crust.all
  end

  def show
  end

end
