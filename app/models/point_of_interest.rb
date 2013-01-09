class PointOfInterest < ActiveRecord::Base
  attr_accessible :name , :lat, :lng
  validates :name, :presence=>true, :uniqueness=>true

  geocoded_by :address, :latitude  => :lat, :longitude => :lng # ActiveRecord
  validates :lat, :presence => true
  validates :lng, :presence => true
end
