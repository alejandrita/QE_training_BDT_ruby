Feature: Google Main page

As a user, I want to search and filter something according some entering the name of what a need to find.
The results page should be match with what I entered.
Each result should have a link to go to the result page.
The results page should have categories to be selected.

Scenario: Search photos
Given I have an gmail account
	And  I login as a user
When I enter the name of a singer
	And I press enter
Then the results page should contain the name of the singer
	And "Images" option on the top should be available	

Scenario: Search videos
Given I have an gmail account
	And  I login as a user
When I enter the name of a singer
	And I press enter
Then the results page should contain the name of the singer
	And "Video" option on the top should be available

Scenario: Search All
Given I have an gmail account
	And  I login as a user
When I enter the name of a singer
	And I press enter
Then the results page should contain the name of the singer
	And "All" option on the top should be available

Scenario: Search Books
Given I have an gmail account
	And  I login as a user
When I enter the name of a singer
	And I press enter
Then the results page should contain the name of the singer
	And "Books" option on the top should be available

Scenario: 