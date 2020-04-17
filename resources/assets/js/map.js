import 'ol/ol.css';
import {Map, View} from 'ol';

import OSM from 'ol/source/OSM';

import Feature from 'ol/Feature';
import Point from 'ol/geom/Point';
// import {Tile as TileLayer, Vector as VectorLayer} from 'ol/layer';
import VectorLayer from 'ol/layer/Vector';
import TileLayer from 'ol/layer/Tile';
import VectorSource from 'ol/source/Vector';


var my_map = {                       // <-- add this line to declare the object
  display: function () {           // <-- add this line to declare a method 


   
var iconFeatures=[];
var iconFeature = new Feature({
    geometry: new Point([0, 0]),
    name: 'Null Island',
    population: 4000,
    rainfall: 500
    });



iconFeatures.push(iconFeature);


var vectorSource = VectorSource({
  features: iconFeatures //add an array of features
});

var iconStyle = new Style({
  image: new ol.style.Icon(/** @type {olx.style.IconOptions} */ ({
    anchor: [0.5, 46],
    anchorXUnits: 'fraction',
    anchorYUnits: 'pixels',
    opacity: 0.75,
    src: 'data/icon.png'
  }))
});


var vectorLayer = new VectorLayer({
  source: vectorSource,
  style: iconStyle
});




const map = new Map({
    target: 'osm_map',
    layers: [vectorLayer],

    view: new View({
        center: [0, 0],
        zoom: 0
    })
});

}                                // <-- close the method
};

export default my_map;               // <-- and export the object