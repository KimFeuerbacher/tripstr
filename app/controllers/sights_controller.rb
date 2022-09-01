class SightsController < ApplicationController
  def show
    @sight = Sight.find(params[:id])
  end

  def index
  end
end
