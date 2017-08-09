$(document).on('turbolinks:load', function() {

  var res = $('.restaurant-address').text();

  $.ajax({
    type: "GET",
    url: "https://maps.googleapis.com/maps/api/geocode/json?address=" + res,
    success: function(data) {
      if(data.status == "ZERO_RESULTS") {
        alert("Location doesn't exist.");
      }

      var lat = data.results[0].geometry.location.lat
      var lng = data.results[0].geometry.location.lng

      var map = new google.maps.Map(document.getElementById('map'), {
        center: { lat: lat, lng: lng },
        zoom: 14
      })

      var marker = new google.maps.Marker({
        map: map,
        position: { lat: lat, lng: lng }
      })
    }
  });
});
