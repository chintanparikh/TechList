Feature: Viewing a list of listings in a section
	In order to have listings to read
	As a public user
	I want to be able to view a list of these listings

Scenario: Viewing a list of sections on the home page
	Given there is a category called "Textbooks"
	And there is a section called "Buy textbooks" with parent category "Textbooks"
	And there is a listing called "Maths textbook" with parent section "Buy textbooks"
	And I am on the section page for "Buy textbooks"
	Then I want to see "Buy textbooks"
	And I want to see "Maths textbook"