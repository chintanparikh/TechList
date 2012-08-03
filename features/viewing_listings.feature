Feature: Viewing a listings
  In order to have listings to read
  As a public user
  I want to be able to view a list of these listings
  And I want to be able to view these listings

Background:
  Given there is a category called "Textbooks"
  And there is a section called "Buy textbooks" with parent category "Textbooks"
  And there is a listing called "Maths textbook" with content "I want to buy a Maths textbook. Contact me at 0449174306" and with parent section "Buy textbooks"
  And I am on the section page for "Buy textbooks"


Scenario: Viewing a list of listings
  Then I want to see "Buy textbooks"
  And I want to see "Maths textbook"

Scenario: Viewing listings
  And I follow "Maths textbook"
  Then I should see "Maths textbook"
  And I should see "I want to buy a Maths textbook. Contact me at 0449174306"
