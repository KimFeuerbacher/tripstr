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
    @all_categories = Category.all.map(&:title)
  end

  def result
    session[:categories] = params[:categories]

    # packing up our values real pretty for filtering
    @city = City.find(session[:city]["city"])
    @duration = session[:duration]
    @categories = session[:categories]
    @categories = @categories.map do |category|
      Category.find_by(title: category)
    end
    @sights = filter(@city, @categories)

    # what we need from this is an array with the sight_ids of the sights that
    # match our search criteria

    # do the filtering thing here
    # redirect_to first @results.first
  end

  private

  def filter(city, categories)
    # filter all sights based on city
      Sight.where(city: city, category: categories)


    # filter them based on categories

  end
end
