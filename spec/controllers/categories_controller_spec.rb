require 'spec_helper'

describe CategoriesController do
	category = FactoryGirl.create(:category)
	section = FactoryGirl.create(:section, category: category)
	other_section = FactoryGirl.create(:section, category: FactoryGirl.create(:category))
	
	describe "#index" do
		it "should include all categories" do
			get :index
			assigns(:categories).should include category
		end
	end

	describe "#show" do
		it "should include all child sections" do
			get :show, id: category.id
			assigns(:category).sections.should include section
		end

		it "should not include non-child sections" do
			get :show, id: category.id
			assigns(:category).sections.should_not include other_section
		end
	end
end
