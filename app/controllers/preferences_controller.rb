class PreferencesController < ApplicationController
  def cities
    @cities = City.all
    if params[:city]
      @cities = City.search_by_name(params[:city])
    end
  end

  def duration
    session[:city] = params[:city]
  end

  def categories
    session[:duration] = params[:duration]
    @all_categories = Category.all.map(&:title)
    @all_categories_instances = Category.all
  end

  def sight_sorting
    # defining last search criteria
    session[:categories] = params[:categories] if params[:categories]

    # are we coming from sight show page? then do this:
    # if there's no rejected_ids on session, create it
    session[:rejected_ids] = [] if session[:rejected_ids].nil?
    # add recently rejected sight to rejected_ids (unless it's repeated)
    if params[:sight]
      session[:rejected_ids] << params[:sight] unless session[:rejected_ids].include? params[:sight]
    end
    @rejected_ids = session[:rejected_ids]

    # are we coming from stop creation page? do this:
    session[:approved_ids] = [] if session[:approved_ids].nil?
    session[:approved_ids] << params[:sight_id] if params[:sight_id]
    @approved_ids = session[:approved_ids]

    # if coming from categories, we pack our values for filtering
    @city = City.find(session[:city]["city"])
    @duration = session[:duration]
    @categories = session[:categories]

    # fetch instances of Category from array of user categories
    @categories = @categories.map do |category|
      Category.find_by(title: category)
    end

    @sights = filter(@city, @categories)
    raise
    redirect_to sight_path(@sights.sample)
  end

  private

  def filter(city, categories)
    sights = Sight.where(city: city, category: categories)

    sights = sights.where.not(id: @rejected_ids) unless @rejected_ids.length.zero?
    sights = sights.where.not(id: @approved_ids) unless @approved_ids.length.zero?
    if sights.length.zero?
      sights = Sight.where(city: city, category: categories).where.not(id: @approved_ids)
    end
    sights
  end
end
