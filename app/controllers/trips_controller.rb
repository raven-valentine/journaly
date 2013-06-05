class TripsController < ApplicationController

  def new
    @trip = Trip.new
  end

  def create
     @trip = Trip.new(params[:trip])
     puts @trip.inspect
     @trip.save
     puts @trip.inspect
     redirect_to @trip
  end

  def show
    @trip = Trip.find(params[:id])
    @trips = Trip.all
  end

end


