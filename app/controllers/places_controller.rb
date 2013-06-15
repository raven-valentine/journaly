class PlacesController < ApplicationController

	def index
	  @places = Trip.find(params[:trip_id]).places
	end

	def new
		@trip = Trip.find(params[:trip_id])
	end

	def create
		@trip = Trip.find(params[:trip_id])
		@place = @trip.places.create(params[:place])
		if @place.save
		   redirect_to map_path(@trip)
		else
			flash[:error] = 'You must give your place a name'
			redirect_to new_trip_place_path
			end
	
	end

	def show
		@trip = Trip.find(params[:trip_id])
		@place = Place.find(params[:id])
		@places = Place.all
	end

end
