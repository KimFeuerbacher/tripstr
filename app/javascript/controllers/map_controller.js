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
      style: "mapbox://styles/mapbox/light-v10",
    });
    this.#addMarkersToMap();
    this.#fitMapToMarkers();
    this.map.on("load", this.#fetchDirections());
  }

  #addMarkersToMap() {
    this.markersValue.forEach((marker) => {
      const popup = new mapboxgl.Popup().setHTML(marker.info_window)

      const customMarker = document.createElement("div")
      customMarker.className = "marker"
      customMarker.style.backgroundImage = `url('${marker.img}')`
      customMarker.addEventListener("click", (e) => {
        this.#popup(marker)

      })
      new mapboxgl.Marker(customMarker).setLngLat([marker.lng, marker.lat]).addTo(this.map);
     // console.log(customMarker)
    });
  }

  #popup(marker) {
    console.log(marker)
    const html =   `  <div class="map-content">
    <h2>${marker.description}</h2>
  </div>`;
    //const popup_down = document.querySelector(".map-popup")
    const popup_down = document.querySelector("#map-container")
    const child = document.createElement("div")
    child.className = "map-popup"
    child.innerHTML = html
    popup_down.appendChild(child)
   

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
        'line-color': '#F50441',
        'line-width': 5,
        'line-opacity': 0.75
      }
    });
  }
}
