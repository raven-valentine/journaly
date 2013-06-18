
describe("PolyLines", function(){

    <script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAeLJnNUGtgDxQkx-5wrQR7YeY4-jd5sLI&libraries=geometry,places,panoramio&sensor=true">
    </script>

var JsonData = []
JsonData.push([{"name":"Paris, France","longitude":"2.3522219000000177","latitude":"48.856614","tripId":"42","placeId":187,"previous_place_id":186,"next_place_id":null},{"name":"London, United Kingdom","longitude":"-0.11982439999997041","latitude":"51.51121389999999","tripId":"42","placeId":186,"previous_place_id":null,"next_place_id":187}]);

	it("creates a start array of places which do not have a previous_place_id", function(){
		var grouping = grouped(JsonData);

		console.log(grouping.start);
		console.log(JsonData);
	});

});


/*
[{"name":"Paris, France","longitude":"2.3522219000000177","latitude":"48.856614","tripId":"42","placeId":187,"previous_place_id":186,"next_place_id":null},{"name":"London, United Kingdom","longitude":"-0.11982439999997041","latitude":"51.51121389999999","tripId":"42","placeId":186,"previous_place_id":null,"next_place_id":187}]
[#<Place id: 187, place: "Paris, France", start_date: "2013-06-18", end_date: "2013-06-18", latitude: "48.856614", longitude: "2.3522219000000177", created_at: "2013-06-18 20:52:19", updated_at: "2013-06-18 20:52:19", trip_id: 42, previous_place_id: 186, next_place_id: nil>, #<Place id: 186, place: "London, United Kingdom", start_date: "2013-06-18", end_date: "2013-06-18", latitude: "51.51121389999999", longitude: "-0.11982439999997041", created_at: "2013-06-18 20:52:07", updated_at: "2013-06-18 20:52:19", trip_id: 42, previous_place_id: nil, next_place_id: 187>, #<Place id: nil, place: nil, start_date: nil, end_date: nil, latitude: nil, longitude: nil, created_at: nil, updated_at: nil, trip_id: 42, previous_place_id: nil, next_place_id: nil>]
*/