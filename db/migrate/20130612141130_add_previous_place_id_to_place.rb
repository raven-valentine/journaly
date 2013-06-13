class AddPreviousPlaceIdToPlace < ActiveRecord::Migration
  def change
  	add_column :places, :previous_place_id, :integer
  	add_column :places, :next_place_id, :integer
  end
end
