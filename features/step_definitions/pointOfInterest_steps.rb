Given /^there is a pointOfInterest called "([^\"]*)"$/ do |name|
  Factory(:pointOfInterest, :name => name, :lat=>Float(-31.5380), :lng =>Float(-68.5237))
end
