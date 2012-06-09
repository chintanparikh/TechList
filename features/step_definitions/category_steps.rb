Given /^there is a category called "(.*?)"$/ do |category_name|
  FactoryGirl.create(:category, name: category_name)
end

Then /^I want to see "(.*?)"$/ do |text|
	debugger
  page.should have_content(text)
end
