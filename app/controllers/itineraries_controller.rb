class ItinerariesController < ApplicationController
  after_action :allow_google_iframe, only: :show

  def index
  end

  def show
    @itinerary = Itinerary.find(params[:id])
    @sights = @itinerary.sights
    # The `geocoded` scope filters only flats with coordinates
    @markers = @sights.geocoded.map do |sight|
      {
        lat: sight.latitude,
        lng: sight.longitude
      }
    end
  end

  private

  def allow_google_iframe
    response.headers['X-Frame-Options'] = 'ALLOWALL'
  end
end
