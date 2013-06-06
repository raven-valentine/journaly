Feature: Showing the places of a trip in a map

@javascript
Scenario: The map
	Given I am on the map for a trip
	Then I should see following places:
		| name  |
		| Paris |