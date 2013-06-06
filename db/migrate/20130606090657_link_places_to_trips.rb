class LinkPlacesToTrips < ActiveRecord::Migration
  def up
  	add_column :places, :trip_id, :integer
  end

  def down
  	remove_column :places, :trip_id
  end
end
