require 'spec_helper'

describe SectionsController do
	describe "#index" do
		category = FactoryGirl.create(:category)
		subject { get :index, category_id: category.id }
		specify { subject.should redirect_to category }
	end
	describe "#show" do
		section = FactoryGirl.create(:section)
		listing = FactoryGirl.create(:listing, section: section)
		other_listing = FactoryGirl.create(:listing)

    subject { get :show, category_id: section.category.id, id: section.id }
		it "should include all child listings" do
      subject
			assigns(:section).listings.should include listing
		end

		it "should not include any non-child listings" do
      subject
			assigns(:section).listings.should_not include other_listing
		end
	end
end
