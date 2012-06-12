require 'spec_helper'

describe ListingsController do
	let!(:category) { FactoryGirl.create(:category) }		
	let!(:section) { FactoryGirl.create(:section, category: category) }	
	let!(:listing) { FactoryGirl.create(:listing, section: section) }	

	describe "#index" do
		subject { get :index, section_id: section.id }
		specify { subject.should redirect_to [category, section] }
	end

	describe "#show" do
		it "should find the target listing" do
			get :show, id: listing.id
			assigns(:listing).name.should == listing.name
			assigns(:listing).content.should == listing.content
		end
	end

end
