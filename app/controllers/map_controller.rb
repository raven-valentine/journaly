class MapController < ApplicationController


	def index
		@place = Trip.find(params[:id])
		@trip = Trip.find(params[:id])
		latitude = @trip.places.find(params[:latitude])
		longitude = @trip.places.find(params[:longitude])
	end

	def show
		@trip = Trip.find(params[:id])
		@place = Trip.find(params[:id]).places
		@tripId = params[:id]
		@markerData = []
		@place.each_index do |x|
			@markerData << {"name"=> @place[x].place, "longitude"=> @place[x].longitude, "latitude"=> @place[x].latitude, "placeId"=> @place[x].id, "tripId"=> @tripId}
				puts @place[x].id
		end
		@markerData = @markerData.to_json
		respond_to do |format|
			format.html
			format.json {render json: @markerData}
		end
	end

end