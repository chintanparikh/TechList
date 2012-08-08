Given /^there is a listing called "(.*?)" with parent section "(.*?)"$/ do |listing_name, section_name|
	section = Section.find_by_name(section_name)
  section ||= FactoryGirl.create(:section, name: section_name)
  listing = FactoryGirl.create(:listing, name: listing_name, section: section)
end

Given /^there is a listing called "(.*?)" with content "(.*?)" and with parent section "(.*?)"$/ do |listing_name, listing_content, section_name|
	section = Section.find_by_name(section_name)
  section ||= FactoryGirl.create(:section, name: section_name)
  listing = FactoryGirl.create(:listing, name: listing_name, content: listing_content, section: section)
end
