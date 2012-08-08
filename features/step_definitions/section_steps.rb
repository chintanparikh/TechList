Given /^there is a section called "(.*?)" with parent category "(.*?)"$/ do |section_name, category_name|
	category = Category.find_by_name(category_name)
  category ||= FactoryGirl.create(:category, name: category_name)
  section = FactoryGirl.create(:section, name: section_name, category: category)
end

