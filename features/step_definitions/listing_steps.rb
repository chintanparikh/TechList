Given /^there is a listing called "(.*?)" with parent section "(.*?)"$/ do |listing_name, section_name|
	section = Section.find_by_name(section_name)
  section ||= FactoryGirl.create(:section, name: section_name)
  listing = FactoryGirl.create(:listing, name: listing_name, section: section)
end