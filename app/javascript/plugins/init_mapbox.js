import mapboxgl from 'mapbox-gl';
import 'mapbox-gl/dist/mapbox-gl.css';

const initMapbox = () => {
  const mapElement = document.getElementById('map');

  if (mapElement) { // only build a map if there's a div#map to inject into

    mapboxgl.accessToken = mapElement.dataset.mapboxApiKey;
    const map = new mapboxgl.Map({
      container: 'map',
      style: 'mapbox://styles/mapbox/streets-v10'
    });

    const markers = JSON.parse(mapElement.dataset.markers);
      markers.forEach((marker) => {
        const popup = new mapboxgl.Popup().setHTML(marker.info_window);

        const element = document.createElement('div');
         element.className = 'marker';
         element.style.backgroundImage = `url('${marker.image_url}')`;
         element.style.backgroundSize = 'contain';
         element.style.width = '75px';
         element.style.height = '75px';

         new mapboxgl.Marker(element)
             .setLngLat([marker.lng, marker.lat])
             .setPopup(popup)
             .addTo(map);
      });

    fitMapToMarkers(map, markers);
  }
};

const fitMapToMarkers = (map, markers) => {
  const bounds = new mapboxgl.LngLatBounds();
  markers.forEach(marker => bounds.extend([ marker.lng, marker.lat ]));
  map.fitBounds(bounds, { padding: 70, maxZoom: 15, duration: 0 });
};


export { initMapbox };
