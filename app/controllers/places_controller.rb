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
		puts @place.previous_place_id
		puts @place.previous_place_id
		unless @place.previous_place_id == nil
			@prev_place_id = @place.previous_place_id
			@prev_place = @trip.places.find(@prev_place_id)
			@prev_place.update_attributes(next_place_id: @place.id)
		end
	end

	def show
		@trip = Trip.find(params[:trip_id])
		@place = Place.find(params[:id])
		@places = Place.all
	end

end
