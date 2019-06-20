class SaucesController < ApplicationController
  before_action :require_login, except: [:index]

  def index
    @sauces = Sauce.all
  end

  def show
  end

end
