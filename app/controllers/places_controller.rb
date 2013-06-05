class PlacesController < ApplicationController

	def new
	end

	def create
		@place = Place.new(params[:place])

		@place.save
		redirect_to @place
	end

	def show
		@place = Place.find(params[:id])
	end

	def index
	  @places = Place.all
	end

end
