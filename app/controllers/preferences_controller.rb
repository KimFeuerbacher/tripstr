class PreferencesController < ApplicationController
  def cities
  end

  def duration
    session[:city] = params[:city]
  end

  def categories
    session[:duration] = params[:duration]
    @all_categories = Category.all.map(&:title)
  end

  def sight_sorting
    # defining last search criteria
    session[:categories] = params[:categories] if params[:categories]

    # initial checks (are we coming from sight show page? then do this)
    session[:rejected_ids] = [] if session[:rejected_ids].nil?
    session[:rejected_ids] << params[:sight] if params[:sight]
    @rejected_ids = session[:rejected_ids]

    # are we coming from stop creation page? do this:
    session[:approved_ids] = [] if session[:approved_ids].nil?
    session[:approved_ids] << params[:sight_id] if params[:sight_id]
    @approved_ids = session[:approved_ids]

    # if coming from categories, we pack our values for filtering
    @city = City.find(session[:city]["city"])
    @duration = session[:duration]
    @categories = session[:categories]

    @categories = @categories.map do |category|
      Category.find_by(title: category)
    end
    @sights = filter(@city, @categories)
    redirect_to sight_path(@sights.sample)
  end

  private

  def filter(city, categories)

    sights = Sight.where(city: city, category: categories)
    sights = sights.where.not(id: @rejected_ids) unless @rejected_ids.length.zero?
    sights = sights.where.not(id: @approved_ids) unless @approved_ids.length.zero?
    sights
  end
end
