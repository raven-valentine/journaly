Feature: Journal Entries

Scenario: Listing all the journal entries
	Given there is a trip "Ibiza Nights"
	And there is a place "Ibiza" in the "Ibiza Nights" trip
	When I look into the journal entries for "Ibiza"
	Then I should see no entries

Scenario: Create a journal entry
	Given there is a trip "Ibiza Nights"
	And there is a place "Ibiza" in the "Ibiza Nights" trip
	When I look into the create journal entry for "Ibiza"
	Then I should see very little
