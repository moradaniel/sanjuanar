Given /^that pointOfInterest has an opinion:$/ do |table|
  table.hashes.each do |attributes|
    @pointOfInterest.opinions.create!(attributes)
  end
end
