class AddLatitudeAndLongitudeAndAddressToPointOfInterest < ActiveRecord::Migration
  def change
    add_column :point_of_interests, :lat, :float, :null => false
    add_column :point_of_interests, :lng, :float, :null => false
    add_column :point_of_interests, :address, :string
  end
end
