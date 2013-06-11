class JournalEntriesController < ApplicationController
  
  def index
    @journal_entries = Place.find(params[:place_id]).journal_entries
  end

  def new
  	@trip = Trip.find(params[:trip_id])
  	@place = @trip.places.find(params[:place_id])
  	@journal_entry = @place.journal_entries.build
	end

  def create 
  	@trip = Trip.find(params[:trip_id])
 	@place = @trip.place.find(params[:place_id])
 	@journal_entries = @place.journal_entries.create(params[:journal_entry])
  end


end