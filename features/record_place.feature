Feature: A user can record places they visit
  In order to make use of Journaly
  As Bob
  I need to record place I visit

  What we know:
  =============
  - a place can be recorded
  - a place has a name
  - a place has a start date
  - a place has an end date
  - a place has a longitude
  - a place has a latitude

  Open Questions
  ==============
  - none we can think of

  Scenario: Record a place
  Given a user is on the new places page
  And I fill in new_place with:
  |place  |start_date |end_date |latitude  |longitude |
  |london |03/06/13   |04/06/13 |51.511214 |-0.119824 |
  And I press "Save Place"
  Then I should see:
  |place  |start_date |end_date |latitude  |longitude |
  |london|03/06/13   |04/06/13 |51.511214 |-0.119824 |
