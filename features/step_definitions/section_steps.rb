Given /^there is a section called "(.*?)" with parent category "(.*?)"$/ do |section_name, category_name|
  category = FactoryGirl.create(:category, name: category_name)
  FactoryGirl.create(:section, name: section_name, category: category)
end
