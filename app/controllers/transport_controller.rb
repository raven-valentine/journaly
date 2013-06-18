class TransportController < ApplicationController

def show
	@my_trip = params[:id]
	@trip = Trip.find(params[:id])
	@places = @trip.places
	@start = @trip.places.where(:previous_place_id => nil)

	@start.each {|start|

	@place_array = @places.group_by { |place| place.previous_place_id == nil }

end

def find_next_places(place,place_array)
	linked_places << {"start" => @place.place, "next_place" => @place.next_place_id}
	place



		@place.each_index do |placeId|
			@markerData << {"name"=> @place[placeId].place, "longitude"=> @place[placeId].longitude, "latitude"=> @place[placeId].latitude, "tripId"=> @tripId, "placeId"=> @place[placeId].id, "previous_place_id"=> @place[placeId].previous_place_id, "next_place_id"=> @place[placeId].next_place_id}
		end

end



end



