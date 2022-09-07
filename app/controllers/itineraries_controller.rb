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
        address: sight.address,
        description: sight.short_description,
        description_long: sight.long_description,
        info_window: render_to_string(partial: "info_window", locals: {sight: sight}),
        img: sight.photos.attached? ? helpers.cl_image_path(sight.photos.first.key, width: 150, height: 150, crop: :fill) : "https://i.imgflip.com/6hf6ez.jpg",
        img2: sight.photos.attached? ? helpers.cl_image_path(sight.photos.first.key, width: 390, height: 146, crop: :fill) : "https://i.imgflip.com/6hf6ez.jpg",
      }
    end
  end

  def allow_google_iframe
    response.headers['X-Frame-Options'] = 'ALLOWALL'
  end
end
