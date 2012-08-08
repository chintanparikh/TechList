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

		it "should include all child listings" do
			get :show, id: section.id 
			assigns(:section).listings.should include listing
		end

		it "should not include any non-child listings" do
			get :show, id: section.id
			assigns(:section).listings.should_not include other_listing
		end
	end
end
