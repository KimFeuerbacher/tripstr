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
        lng: sight.longitude,
        name: sight.name,
        info_window: render_to_string(partial: "info_window", locals: {sight: sight}),
        img: sight.photos.attached? ? helpers.cl_image_path(sight.photos.first.key, width: 150, height: 150, crop: :fill) : "https://i.imgflip.com/6hf6ez.jpg",
      }
    end
  end

  private

  def allow_google_iframe
    response.headers['X-Frame-Options'] = 'ALLOWALL'
  end
end
