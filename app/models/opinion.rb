class Opinion < ActiveRecord::Base
  belongs_to :point_of_interest
  attr_accessible :description, :title

  validates :title, :presence => true
  validates :description, :presence => true, :length => {:minimum => 10 }

end
