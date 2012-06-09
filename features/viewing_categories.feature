Feature: Viewing a list of categories
	In order to have categories to post to
	As a public user
	I want to be able to view a list of these categories

Scenario: Viewing a list of categories on the home page
	Given I am on the homepage
	And there is a category called "Textbooks"
	Then I want to see "Textbooks"