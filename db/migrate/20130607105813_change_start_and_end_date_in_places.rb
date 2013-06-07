class ChangeStartAndEndDateInPlaces < ActiveRecord::Migration
  def up
    change_column :places, :start_date, :date
    change_column :places, :end_date, :date
  end

  def down
    change_column :places, :start_date, :string
    change_column :places, :end_date, :string
  end
end
