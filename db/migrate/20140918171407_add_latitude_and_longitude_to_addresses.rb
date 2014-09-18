class AddLatitudeAndLongitudeToAddresses < ActiveRecord::Migration
  def change
    add_column :addresses, :longitude, :float
    add_column :addresses, :latitude, :float
    add_index :addresses, :latitude
    add_index :addresses, :longitude
  end
end
