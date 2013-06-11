// Google Autocomplete //

/*
  <script type="text/javascript">
  function initialize() {
    var input = document.getElementById('searchTextField');
    var autocomplete = new google.maps.places.Autocomplete(input);

    google.maps.event.addListener(autocomplete, 'place_changed', function() {
      var place = autocomplete.getPlace();
      var longitude = place.geometry.location.kb;
      var latitude = place.geometry.location.jb;
      $('#place_latitude').val(latitude);
      $('#place_longitude').val(longitude);
    });
  };
  google.maps.event.addDomListener(window, 'load', initialize);
  </script>

  */