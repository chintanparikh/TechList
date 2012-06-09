Feature: Viewing a list of sections
	In order to have sections to post to
	As a public user
	I want to be able to view a list of these sections

Scenario: Viewing a list of sections on the home page
	Given there is a category called "Textbooks"
	And there is a section called "Buy textbooks" with parent category "Textbooks"
	And I am on the homepage
	Then I want to see "Textbooks"
	And I want to see "Buy textbooks"