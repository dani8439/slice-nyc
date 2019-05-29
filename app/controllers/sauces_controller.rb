class SaucesController < ApplicationController
  before_action :require_login, except: [:index]

  def index
    @sauces = Sauce.all
  end

  def show
  end

  def create
  end

  def edit
  end

  def destroy
  end
end
