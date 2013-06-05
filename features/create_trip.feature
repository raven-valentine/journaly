Feature: A user can create a trip
  In order to make use of Journaly
  As Bob
  I need to create a trip

  What we know:
  =============
  - a trip can be created
  - a trip has a name
  - a trip has a start date
  - a trip has an end date
  - a trip has a travelling author

  Open Questions
  ==============
  - none we can think of

  Scenario: Create a trip
  Given a user is on the trip creation page
  And I fill in "trip_name" with "Jolly Boys Outing"
  And I press "Create Trip"
  Then I should see "Jolly Boys Outing"
