class SaucesController < ApplicationController
  before_action :require_login

  def index
    @sauces = Sauce.all
  end
end
