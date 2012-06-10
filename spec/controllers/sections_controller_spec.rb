require 'spec_helper'

describe SectionsController do
	describe "#show" do
		section = FactoryGirl.create(:section)
		listing = FactoryGirl.create(:listing, section: section)

		it "should include all child listings" do
			get :show, id: section.id
			assigns(:section).listings.should include listing
		end
	end
end
