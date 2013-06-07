class Place < ActiveRecord::Base
  attr_accessible :end_date, :latitude, :longitude, :place, :start_date
  belongs_to :trip

end