<!DOCTYPE html>
<html>
<head>
<meta charset='utf-8' />
<title>Place the geocoder input outside the map</title>
<%@ include file="include/headindex.jsp"%>
<meta name='viewport' content='initial-scale=1,maximum-scale=1,user-scalable=no' />
<script src='https://api.tiles.mapbox.com/mapbox-gl-js/v0.53.0/mapbox-gl.js'></script>
<link href='https://api.tiles.mapbox.com/mapbox-gl-js/v0.53.0/mapbox-gl.css' rel='stylesheet' />
<style>
body { margin:0; padding:0; }
#map { position:relative; top:0; bottom:0; width:100%; }
</style>
</head>
<body>
	
 <div class="banner-form">
						<form class="form-inline" action="cercaRistorante" method="get">
							<div class="form-group">
								<div class="form-group" id="geocoder">
						
								</div>
							</div>
					
							<button type="submit" class="btn theme-btn btn-lg">Cerca</button>
						</form>
					</div>
	
<script src='https://api.mapbox.com/mapbox-gl-js/plugins/mapbox-gl-geocoder/v3.1.2/mapbox-gl-geocoder.min.js'></script>
<link rel='stylesheet' href='https://api.mapbox.com/mapbox-gl-js/plugins/mapbox-gl-geocoder/v3.1.2/mapbox-gl-geocoder.css' type='text/css' />
<style>
.geocoder {
position:absolute;
z-index:1;
width:50%;
left:50%;
margin-left:-25%;
top:20px;
}
.mapboxgl-ctrl-geocoder { min-width:100%; }
</style>
<div id='map'></div>
 
<script>
mapboxgl.accessToken = 'pk.eyJ1IjoibWFyaWE5NjUiLCJhIjoiY2pzZXVwMGl1MThpeDRhbG4zczdlMzA3dyJ9.aWuhFBitnvo3ZVviybNu2A';
var map = new mapboxgl.Map({
container: 'map',
style: 'mapbox://styles/mapbox/streets-v9',
center: [-79.4512, 43.6568],
zoom: 13
});
 
var geocoder = new MapboxGeocoder({
accessToken: mapboxgl.accessToken
});
 
document.getElementById('geocoder').appendChild(geocoder.onAdd(map));
</script>
 
</body>
</html>