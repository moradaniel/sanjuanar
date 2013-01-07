Given /^there is a pointOfInterest called "([^\"]*)"$/ do |name|
  Factory(:pointOfInterest, :name => name)
end