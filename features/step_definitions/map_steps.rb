Given(/^I am on the map for a trip$/) do
  visit map_path
end

Then(/^I should see following places:$/) do |places|
  places.hashes.each do |place|
  	page.evaluate_script("_.contains(window.markersOnMap, '#{place['name']}')").should be_true
  end
end