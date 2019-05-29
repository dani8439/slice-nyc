class CheesesController < ApplicationController
  before_action :require_login

  def index
    @cheeses = Cheese.all
  end

end
