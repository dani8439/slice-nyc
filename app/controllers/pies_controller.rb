class PiesController < ApplicationController

  def index
    @pies = Pie.all
  end
end
