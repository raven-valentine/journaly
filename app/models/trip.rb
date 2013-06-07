class Trip < ActiveRecord::Base
  attr_accessible :name, :start_date, :end_date
  has_many :places
  validates :end_date, :presence => true, :if => :jolly?

  def jolly?
    puts "*" * 80
    puts end_date >= start_date
    end_date >= start_date
    puts "*" * 80
  end

end