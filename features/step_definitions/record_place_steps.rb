Given(/^a user is on the new places page$/) do
  visit '/places/new'
end

And(/^I fill in new_place with:$/) do |table|
	table.hashes.each do |table|
      fill_in 'place_place', :with => table['place']
      fill_in 'place_start_date', :with => table['start_date']
      fill_in 'place_end_date', :with => table['end_date']
      fill_in 'place_latitude', :with => table['latitude']
      fill_in 'place_longitude', :with => table['longitude']
     end
end

Then(/^I should see:$/) do |content|
    content.hashes.each do |content|
      page.should have_content(content['place'])
      page.should have_content(content['start_date'])
      page.should have_content(content['end_date'])
      page.should have_content(content['latitude'])
      page.should have_content(content['longitude'])
    end
end
