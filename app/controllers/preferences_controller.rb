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
    if @rejected_ids.length.zero? && @approved_ids.length.zero?
      Sight.where(city: city, category: categories)
    else
      Sight.where(city: city, category: categories).where.not(id: @rejected_ids).where.not(id: @approved_ids)
    end
  end
end
