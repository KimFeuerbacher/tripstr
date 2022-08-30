class CitiesController < ApplicationController
  def index
    @cities = City.all
    raise
    City.search_by_name(params[:query])
  end

end
