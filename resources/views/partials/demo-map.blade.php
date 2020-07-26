<script src="tinymce/tinymce.min.js"></script>
<script>
    tinymce.init({
        selector: '#editor'
    });
</script>

<script src="tinymce/tinymce.min.js"></script>
<script>
    tinymce.init({
        selector: '#editor'
    });
</script>

<script src="https://maps.googleapis.com/maps/api/js?v=3.exp&sensor=false"></script>
<script>
    var map;
    var markersArray=[];
    var lat = $("#lat").val();
    var lng = $("#lng").val();
    

    function initialize() {
        var mapOptions = {
            zoom: 8,
            center: new google.maps.LatLng(lat,lng),
            mapTypeId: google.maps.MapTypeId.ROADMAP
        };
        map = new google.maps.Map(document.getElementById('map-canvas'),
            mapOptions);

        deleteOverlays();

        var panPoint = new google.maps.LatLng(26.8206, 30.8025);
        map.setCenter(panPoint)
        var marker = new google.maps.Marker({
            map: map,
            position: {
                lat: 26.8206,
                lng: 30.8025
            },
            draggable: true
        });
        markersArray.push(marker);



        function deleteOverlays() {
            if (markersArray) {
                for (i in markersArray) {
                    markersArray[i].setMap(null);
                }
                markersArray.length = 0;
            }
        }

        google.maps.event.addListener(marker, 'dragend', function(ev){
            // alert(marker.getPosition().lat());
            // alert(marker.getPosition().lng());
            document.getElementById("lat").value = marker.getPosition().lat();
            document.getElementById("lng").value = marker.getPosition().lng();
        });

    }

    google.maps.event.addDomListener(window, 'load', initialize);


</script>
