class RenameColumnDateFromTrips < ActiveRecord::Migration
  def change
    rename_column :trips, :date, :start_date
    change_column :trips, :start_date, :date
  end
end
