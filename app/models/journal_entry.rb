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

class JournalEntry < ActiveRecord::Base
  belongs_to :place
  attr_accessible :post, :title

  
end
