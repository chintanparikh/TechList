require 'spec_helper'

describe ListingsController do
	describe "#index" do
		category = FactoryGirl.create(:category)
		section = FactoryGirl.create(:section, category: category)
		subject { get :index, section_id: section.id }
		specify { subject.should redirect_to [category, section] }
	end
end
