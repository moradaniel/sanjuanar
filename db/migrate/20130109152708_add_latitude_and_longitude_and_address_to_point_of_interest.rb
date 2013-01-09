class AddLatitudeAndLongitudeAndAddressToPointOfInterest < ActiveRecord::Migration
  def change
    add_column :point_of_interests, :lat, :float, :null => false  , :default => -31.5380
    add_column :point_of_interests, :lng, :float, :null => false  , :default => -68.5237
    add_column :point_of_interests, :address, :string
  end
end
