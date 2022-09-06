class StopsController < ApplicationController
  def create
    if session[:itinerary_id].present?
      @itinerary = Itinerary.find(session[:itinerary_id])
    else
      @itinerary = Itinerary.create(user: current_user)
      session[:itinerary_id] = @itinerary.id
    end
    @sight = Sight.find(params[:sight_id])
    @stop = Stop.create(itinerary: @itinerary, sight: @sight)

    session[:duration] == "Half day" ? duration = 3 : duration = 6

    if @itinerary.stops.length == duration
      redirect_to itinerary_path(@itinerary)
    else
      redirect_to sight_sorting_path(request.parameters)
    end
  end

  def show
  end

  def destroy
    @stop = Stop.find(params[:id])
    @itinerary = @stop.itinerary
    @stop.destroy

    redirect_to itinerary_path(@itinerary), status: :see_other
  end

  def index
    @itinerary = Itinerary.find(params[:itinerary_id])
  end
end
