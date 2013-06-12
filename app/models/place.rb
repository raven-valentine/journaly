class Place < ActiveRecord::Base
  attr_accessible :end_date, :latitude, :longitude, :place, :start_date
  has_many :journal_entries
  belongs_to :trip
  belongs_to :previous_place, :class_name => "Place", :foreign_key => :previous_place_id
  has_one :next_place, :class_name => "Place", :foreign_key => :next_place_id
end

