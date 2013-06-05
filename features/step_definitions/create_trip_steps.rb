Given(/^a user is on the trip creation page$/) do
  visit new_trip_path
end

Given(/^I fill in "(.*?)" with "(.*?)"$/) do |field_name, trip_name|
  fill_in field_name, :with => trip_name
end


Given(/^I press "(.*?)"$/) do |create_trip_button|
  click_on(create_trip_button)
end

Then(/^I should see "(.*?)"$/) do |trip_name|
  page.should have_content(trip_name)
end

Given(/^I fill in "(.*?)" with (\d+)$/) do |field_name, start_date|

end

Given(/^I fill in "(.*?)" with (\d+)\/(\d+)\/(\d+)$/) do |field_name, arg2, arg3, arg4|
  fill_in field_name, :with => [arg2, arg3, arg4]
end

