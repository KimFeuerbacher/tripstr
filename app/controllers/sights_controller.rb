class SightsController < ApplicationController
  def show
    @no_nav = true
    @sight = Sight.find(params[:id])
  end

  def index
  end
end
