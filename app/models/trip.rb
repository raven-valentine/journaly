# == Schema Information
#
# Table name: trips
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  start_date :date
#  end_date   :date
#

class Trip < ActiveRecord::Base
  attr_accessible :name, :start_date, :end_date
  has_many :places

  validates :name, :presence => true
  validates_date :end_date, :on_or_after => :start_date

  def linked_places
  	places.map(&:next_places).flatten.uniq.compact
  end
end
