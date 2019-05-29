class CrustsController < ApplicationController
  before_action :require_login

  def index
    @crusts = Crust.all
  end
end
