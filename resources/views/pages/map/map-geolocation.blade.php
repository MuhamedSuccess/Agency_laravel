<!DOCTYPE html>
<html lang="{{ app()->getLocale() }}">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="{{ asset('css/app.css') }}" rel="stylesheet">
    <script src="https://cdn.polyfill.io/v2/polyfill.min.js?features=fetch,requestAnimationFrame,Element.prototype.classList,URL"></script>
    <script src="https://code.jquery.com/jquery-2.2.3.min.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>

    <script src="https://cdn.jsdelivr.net/gh/openlayers/openlayers.github.io@master/en/v6.3.1/build/ol.js"></script>
    

    <style>
        #map {            
            width: 100%;
            height: 400px;
        }
    </style>
</head>
<body>

<div id="app">
<div id="map" class="map"></div>
    <div id="info" style="display: none;"></div>
    <label for="track">
      track position
      <input id="track" type="checkbox"/>
    </label>
    <p>
      position accuracy : <code id="accuracy"></code>&nbsp;&nbsp;
      altitude : <code id="altitude"></code>&nbsp;&nbsp;
      altitude accuracy : <code id="altitudeAccuracy"></code>&nbsp;&nbsp;
      heading : <code id="heading"></code>&nbsp;&nbsp;
      speed : <code id="speed"></code>
    </p>
</div>

<script src="{{ asset('js/app.js') }}" ></script>

<script type="text/javascript">
    window.map_geolocation.display();
</script>

</body>
</html>


<!-- <!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title>Using Parcel with OpenLayers</title>
    <style>
      #map {
        width: 400px;
        height: 250px;
      }
    </style>
  </head>
  <body>
    <div id="map"></div>
    <script src="./index.js"></script>
  </body>
</html> -->




<!-- <iframe src="https://www.google.com/maps/d/embed?mid=1Jt6CXzHZ2_zxKNXsgdxMiL4LdzQafN_M" width="640" height="480"></iframe> -->

