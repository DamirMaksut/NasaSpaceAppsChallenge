import { useRef, useState, useEffect } from "react";

import mapboxgl from "mapbox-gl";
import { Icon } from "@iconify/react";

mapboxgl.accessToken = "pk.eyJ1IjoiYWxpc2hlcmFraG1ldG92dnYiLCJhIjoiY2t1OWh6Z2pkMDcwODJxcXZvaGFycm83dyJ9.3apGH_wmqBTfJvSRkqZGXQ";

const MapTest = () => {

    //Setting up default values
    const mapContainer = useRef(null);
    const map = useRef(null);
    const [lng, setLng] = useState(71.449074);
    const [lat, setLat] = useState(51.169392);
    const [zoom, setZoom] = useState(2);

    //Initializing map when component mounts
    useEffect(() => {
        if (map.current) return; // initialize map only once
        map.current = new mapboxgl.Map({
          container: mapContainer.current,
          style: 'mapbox://styles/alisherakhmetovvv/cku9jwi5h22fp18ldcri117z4',
          center: [lng, lat],
          zoom: zoom
        });

        new mapboxgl.Marker().setLngLat([30.5, 50.5]).addTo(map.current);
    }, []);
    
    return (
        <div className="container">
            <div className="map-label">
                <h1>Plastic Tracker</h1>
                <Icon className="map-icon" icon="akar-icons:eye"/>
            </div>
            <div ref={mapContainer} className="map-container"/>
        </div>
    )
}

export default MapTest
