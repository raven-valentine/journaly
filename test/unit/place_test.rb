# == Schema Information
#
# Table name: places
#
#  id                :integer          not null, primary key
#  place             :string(255)
#  start_date        :date
#  end_date          :date
#  latitude          :string(255)
#  longitude         :string(255)
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#  trip_id           :integer
#  previous_place_id :integer
#  next_place_id     :integer
#

require 'test_helper'

class PlaceTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
