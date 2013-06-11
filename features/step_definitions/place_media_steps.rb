Given(/^there is a trip "(.*?)"$/) do |trip_name|
  Trip.create(:name => trip_name, :start_date => Date.today, :end_date => Date.today + 30)
end

Given(/^a user is on the map page$/) do
  visit '/map/1'
end

Given(/^there is a place "(.*?)"$/) do |place_name|
    Place.create(:place => place_name, :start_date => Date.today, :end_date => Date.today + 5, :longitude => 0, :latitude => 0)
end

Given(/^I press a "(.*?)"$/) do |place_marker|
  click_on(place_marker)
end

Then(/^I should see the "(.*?)"$/) do |media|
  page.should have_content(media)
end

