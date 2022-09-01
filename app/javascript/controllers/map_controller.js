import { Controller } from "@hotwired/stimulus";
export default class extends Controller {
  static values = {
    apiKey: String,
    markers: Array,
  };

  connect() {
    mapboxgl.accessToken = this.apiKeyValue;

    this.map = new mapboxgl.Map({
      container: this.element,
      style: "mapbox://styles/mapbox/streets-v10",
    });
    this.#addMarkersToMap();
    this.#fitMapToMarkers();
    this.map.on("load", this.#fetchDirections());
  }

  #addMarkersToMap() {
    this.markersValue.forEach((marker) => {
      new mapboxgl.Marker().setLngLat([marker.lng, marker.lat]).addTo(this.map);
    });
  }

  #fitMapToMarkers() {
    const bounds = new mapboxgl.LngLatBounds();
    this.markersValue.forEach((marker) =>
      bounds.extend([marker.lng, marker.lat])
    );
    this.map.fitBounds(bounds, { padding: 70, maxZoom: 15, duration: 0 });
  }

  async #fetchDirections() {
    const coordinates = this.markersValue
      .map((marker) => {
        return marker.lng + "," + marker.lat;
      })
      .join(";");
    const url = `https://api.mapbox.com/optimized-trips/v1/mapbox/walking/${coordinates}?geometries=geojson&access_token=${this.apiKeyValue}`;
    const res = await fetch(url);
    const result = await res.json();

    const geojson = {
      type: 'Feature',
      properties: {},
      geometry: result.trips[0].geometry
    };

    this.map.addSource("route", {
      type: "geojson",
      data: geojson,
    });

    this.map.addLayer({
      id: 'route',
      type: 'line',
      source: "route",
      layout: {
        'line-join': 'round',
        'line-cap': 'round'
      },
      paint: {
        'line-color': '#3887be',
        'line-width': 5,
        'line-opacity': 0.75
      }
    });
  }
}
