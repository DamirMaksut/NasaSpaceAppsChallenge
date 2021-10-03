import ReactMapGL, { Marker} from "react-map-gl";
import { useState } from "react"
import { Icon } from "@iconify/react";

import * as PlasticData from "../plastic-data.json";

const Map = () => {
    const [viewport, setViewport] = useState({
        latitude: 51.169392,
        longtitude: 71.449074,
        width: "100vw",
        height: "100vh",
        zoom: 2,
    });

    return (
        <ReactMapGL
            {...viewport}
            mapboxApiAccessToken="pk.eyJ1IjoiYWxpc2hlcmFraG1ldG92dnYiLCJhIjoiY2t1OWh6Z2pkMDcwODJxcXZvaGFycm83dyJ9.3apGH_wmqBTfJvSRkqZGXQ"
            mapStyle="mapbox://styles/alisherakhmetovvv/cku9jwi5h22fp18ldcri117z4"
            onViewportChange={viewport => {
                setViewport(viewport);
            }}>
            <div className="map-label">
                <h1>Plastic Tracker</h1>
                <Icon className="map-icon" icon="akar-icons:eye"/>
            </div>
            <div className="info-popup">
                <p>Plastic concentration scale</p>
                <div className="scale"></div>
                <div className="subscale"><p>Low</p><p>High</p></div>
            </div>
            
            {PlasticData.features.map((plastic, i) => (
                <Marker key={i} latitude={plastic.geometry.coordinates[1]} longitude={plastic.geometry.coordinates[0]}>
                    <div className="marker" style={{ background: `rgb(calc( 255 * ${plastic.properties.conScale} ), 0, calc( 255 * ${1-plastic.properties.conScale}))` }}></div>
                </Marker>
            ))}
        </ReactMapGL>
    )
}

export default Map
