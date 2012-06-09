require 'spec_helper'

describe CategoriesController do
	describe "GET #index" do
		category = FactoryGirl.create(:category)

		it "should include all categories" do
			get :index
			assigns(:categories).should include category
		end

	end
end
