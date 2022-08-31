import { Controller } from "@hotwired/stimulus"
export default class extends Controller {
  static values = {
    apiKey: String,
    markers: Array
  }

  connect() {
    mapboxgl.accessToken = this.apiKeyValue

    this.map = new mapboxgl.Map({
      container: this.element,
      style: "mapbox://styles/mapbox/streets-v10"
    })
    this.#addMarkersToMap()
    this.#fitMapToMarkers()
    this.#fetchdirections()
  }

  #addMarkersToMap() {
    this.markersValue.forEach((marker) => {
      new mapboxgl.Marker()
        .setLngLat([ marker.lng, marker.lat ])
        .addTo(this.map)
    })
  }

    #fitMapToMarkers() {
      const bounds = new mapboxgl.LngLatBounds()
      this.markersValue.forEach(marker => bounds.extend([ marker.lng, marker.lat ]))
      this.map.fitBounds(bounds, { padding: 70, maxZoom: 15, duration: 0 })
    }

    #fetchdirections(){
      const coordinates = this.markersValue.map(marker => {
        return marker.lng + "," + marker.lat
      }).join(";")
      console.log(coordinates)
      const url = `https://api.mapbox.com/optimized-trips/v1/mapbox/walking/${coordinates}?access_token=${this.apiKeyValue}`
      console.log(url)
      fetch(url)
        .then((res) => res.json())
        .then((data) => {
          console.log(data)
        })
    }
}
