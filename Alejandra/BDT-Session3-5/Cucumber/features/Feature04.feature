Feature: Activities
Background: Get ready
	Given I wake up
	When I take a bath
		And I dress
		And I have breakfast
	Then I go out 

Scenario: Work at office
Given I arrive to my office
When I read my emails
Then I sent my emails answers

Scenario: Work at university
Given I arrive to my class room
When I read my homework
Then I prepare my homework