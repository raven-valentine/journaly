class TripsController < ApplicationController

  def new
    @trip = Trip.new
  end

  def create
     @trip = Trip.new(params[:trip])
     if true
       @trip.save
       redirect_to @trip
     else
       puts "*-*" * 80
     end
  end

  def show
    @trip = Trip.find(params[:id])
    @trips = Trip.all
  end

end


