class Trip < ActiveRecord::Base
  attr_accessible :name, :start_date, :end_date
  has_many :places
  validates :name, :presence => true
  validates_date :end_date, :on_or_after => :start_date
end