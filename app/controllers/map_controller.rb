class MapController < ApplicationController


	def index
		@place = Trip.find(params[:id])
		@trip = Trip.find(params[:id])
		latitude = @trip.places.find(params[:latitude])
		longitude = @trip.places.find(params[:longitude])
	end

	def show
		@trip = Trip.find(params[:id])
		@tripId = params[:id]
		@place = Trip.find(params[:id]).places
		@markerData = []
		@place.each_index do |placeId|
			@markerData << {"name"=> @place[placeId].place, "longitude"=> @place[placeId].longitude, "latitude"=> @place[placeId].latitude, "tripId"=> @tripId, "placeId"=> @place[placeId].id}
		end
		@markerData = @markerData.to_json
		respond_to do |format|
			format.html
			format.json {render json: @markerData}
		end
	end

end