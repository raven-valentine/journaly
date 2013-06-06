class MapController < ApplicationController


	def index
		puts Trip.find(params[:id])
		@place = Trip.find(params[:id])
		@trip = Trip.find(params[:id])
		latitude = @trip.places.find(params[:latitude])
		longitude = @trip.places.find(params[:longitude])
	end

	def show
		 @markerData = [{"name"=> "London, really", "longitude"=> 2.3722219000000177, "latitude"=> 48.856614 }];
		 @markerData = @markerData.to_json

		 respond_to do |format|
		 	format.html
		 	format.json {render json: @markerData}
		end
	end

end