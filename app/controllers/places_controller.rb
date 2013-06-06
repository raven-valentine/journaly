class PlacesController < ApplicationController

	def new
		@trip = Trip.find(params[:trip_id])
	end

	def create
		@trip = Trip.find(params[:trip_id])
		@place = @trip.places.create(params[:place])

		redirect_to trip_path(@trip)
	end

	def show
		@place = Place.find(params[:id])
	end

	def index
	  @places = Trip.find(params[:trip_id]).places
	end

end
