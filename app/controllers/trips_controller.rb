class TripsController < ApplicationController

  def new
    @trip = Trip.new
  end

  def create
    @trip = Trip.new(params[:trip])
    if @trip.save
      redirect_to map_path(@trip)
    else
      #flash[:error] = 'You must give your trip a name and valid dates'
      render :new
    end
  end

  def show
    @trip = Trip.find(params[:id])
    @trips = Trip.all
  end

end


