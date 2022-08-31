class PreferencesController < ApplicationController
  def cities
  end

  # saving session params:
  # method name = the page we are directed to after setting the params below
  def duration
    session[:city] = params[:city]
  end

  def categories
    session[:duration] = params[:duration]
  end

  def result
    session[:categories] = params[:categories]

    # packing up our values real pretty for filtering
    @city = City.find(session[:city]["city_id"])
    @duration = session[:duration]
    @categories = session[:categories]

    results = {
      city: @city,
      duration: @duration,
      categories: @categories
    }

    filter(results)




    # @city = session[:city]
    # @duration = session[:duration]
    # @categories = session[:categories]

    # @results = Sight.where()


    # what we need from this is an array with the sight_ids of the sights that
    # match our search criteria

    # do the filtering thing here
    # redirect_to first @results.first
  end

  private

  def filter(results)

  end

end
