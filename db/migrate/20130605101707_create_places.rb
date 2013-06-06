class CreatePlaces < ActiveRecord::Migration
  def change
    create_table :places do |t|
      t.string :place
      t.string :start_date
      t.string :end_date
      t.string :latitude
      t.string :longitude

      t.timestamps
    end
  end
end
