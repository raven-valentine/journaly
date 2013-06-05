 Feature: A user can create a trip with a start and end date
  In order to create meaning for a trip
  As Bob
  I need to create a trip with a start and end date

  What we know:
  =============
  - a trip can be created
  - a trip has a name
  - a trip has a start date
  - a trip has an end date

  Open Questions
  ==============
  - a trip has a travelling author


  Scenario: Create a trip
  Given a user is on the trip creation page
  And I fill in "trip_name" with "Jolly Boys Outing"
  And I press "Create Trip"
  Then I should see "Jolly Boys Outing"

  Scenario: Create a trip with a start date and end date
  Given a user is on the trip creation page
  And I fill in "trip_name" with "Jolly Boys Outing"
  And I fill in "start_date1i)" with 2013
  And I fill in "start_date(2i)" with 07
  And I fill in "start_date(3i)" with 04
  And I fill in "end_date" with "August 7th"
  And I press "Create Trip"
  Then I should see "Jolly Boys Outing" and "July 4th" and "August 7th"