Given(/^there is a trip "(.*?)"$/) do |trip_name|
  Trip.create(:name => trip_name, :start_date => Date.today, :end_date => Date.today + 30)
end

Given(/^there is a place "(.*?)" in the "(.*?)" trip$/) do |place_name, trip_name|
  trip = Trip.find_by_name(trip_name)
  trip.places.create(:place => place_name)
end

When(/^I look into the journal entries for "(.*?)"$/) do |place_name|
  place = Place.find_by_place(place_name)
  visit "/trips/#{place.trip_id}/places/#{place.id}/journal_entries"
end

Then(/^I should see no entries$/) do
 pending
end

When(/^I look into the create journal entry for "(.*?)"$/) do |place_name|
  place = Place.find_by_place(place_name)
  visit "/trips/#{place.trip_id}/places/#{place.id}/journal_entries/new"
end

Then(/^I should see very little$/) do
  pending # express the regexp above with the code you wish you had
end

