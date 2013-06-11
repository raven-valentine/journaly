
 class LinkPlaceToJournalEntries < ActiveRecord::Migration
	def up
		add_column :journal_entries, :place_id, :integer
	end

	def down 
		remove_column :journal_entries, :place_id
	end
end

