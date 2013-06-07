class MapController < ApplicationController


	def index
		puts Trip.find(params[:id])
		@place = Trip.find(params[:id])
		@trip = Trip.find(params[:id])
		latitude = @trip.places.find(params[:latitude])
		longitude = @trip.places.find(params[:longitude])
	end

	def show

		@place = Trip.find(params[:id]).places
		puts @place.inspect

		@markerData = []
		@place.each_index do |x|

		 @markerData << {"name"=> @place[x].place, "longitude"=> @place[x].longitude, "latitude"=> @place[x].latitude}
		 end

		 puts @markerData

		 @markerData = @markerData.to_json

		 respond_to do |format|
		 	format.html
		 	format.json {render json: @markerData}
		end
	end

end