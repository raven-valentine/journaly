# == Schema Information
#
# Table name: journal_entries
#
#  id         :integer          not null, primary key
#  title      :string(255)
#  post       :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  place_id   :integer
#

require 'test_helper'

class JournalEntryTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
