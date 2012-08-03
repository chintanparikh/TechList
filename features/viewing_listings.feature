Feature: Viewing a list of listings in a section
	In order to have listings to read
	As a public user
	I want to be able to view these listings

Background:
  Given there is a category called "Textbooks"
  And there is a section called "Buy textbooks" with parent category "Textbooks"
  And there is a listing called "Maths textbook" with content "I want to buy a maths textbook. Contact me at 0449174306" and parent section "Buy textbooks"
  And I am on the section page for "Buy textbooks"


Scenario: Viewing a list of sections on the home page
	Then I want to see "Buy textbooks"
	And I want to see "Maths textbook"

Scenario: Viewing a listing
  When I follow "Maths textbook"
  Then I should see "Maths textbook"
  And I should see "I want to buy a maths textbook. Contact me at 0449174306"
