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
		redirect_to map_path(@trip)
	end

	def show
		@trip = Trip.find(params[:trip_id])
		@place = Place.find(params[:id])
	end

end
