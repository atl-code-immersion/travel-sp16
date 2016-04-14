$(document).ready(function (){

  function initialize() {
  	var myLatlng = new google.maps.LatLng(latitude, longitude);

    var mapOptions = {
	    center: myLatlng,
	    zoom: 15,
	    scrollwheel: false
    };
      
    var map = new google.maps.Map(document.getElementById('destination-map'), mapOptions);  

    var contentString = '<h2>' + address + '</h2>';

   	var infowindow = new google.maps.InfoWindow({
   		content: contentString
 		});

    var marker = new google.maps.Marker({
		  position: myLatlng,
		  map: map,
		  animation: google.maps.Animation.BOUNCE
		});

		google.maps.event.addListener(marker, 'click', function() {
    	infowindow.open(map,marker);
 		});
  }
    
  google.maps.event.addDomListener(window, 'load', initialize);
});
