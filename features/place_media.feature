Feature: Showing the media connected with a place
  In order to add media to places
  As Bob
  I need to be able to select a place

  What we know:
  =============
  - a place can be created
  - a place has a marker on a map

  Scenario: View media attached to a place
  Given there is a trip "Ibiza Nights"
  When a user is on the map page
  Given there is a place "Sunderland"
  And I press "Sunderland"
  Then I should see the media page

