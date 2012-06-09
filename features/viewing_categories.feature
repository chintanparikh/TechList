Feature: Viewing a list of categories
	In order to have categories to house sections
	As a public user
	I want to be able to view a list of these categories

Scenario: Viewing a list of categories on the home page
	Given there is a category called "Textbooks"
	And I am on the homepage
	Then I want to see "Textbooks"