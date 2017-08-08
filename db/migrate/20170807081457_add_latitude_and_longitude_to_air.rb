class AddLatitudeAndLongitudeToAir < ActiveRecord::Migration
  def change
    add_column :airs, :latitude, :float
    add_column :airs, :longitude, :float
  end
end
