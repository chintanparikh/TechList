require 'spec_helper'

describe CategoriesController do
	category = FactoryGirl.create(:category)
	section = FactoryGirl.create(:section, category: category)
	
	describe "#index" do
		it "should include all categories" do
			get :index
			assigns(:categories).should include category
		end
	end

	describe "#show" do
		it "should include all child sections" do
			get :show, id: category.id
			assigns(:sections).should include section
		end
	end
end
