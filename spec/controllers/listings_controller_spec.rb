require 'spec_helper'

describe ListingsController do
  let!(:category) { FactoryGirl.create(:category) }
  let!(:section) { FactoryGirl.create(:section, category: category) }
  let!(:listing) { FactoryGirl.create(:listing, section: section) }

  describe "#index" do
    subject { get :index, category_id: category.id, section_id: section.id }
    specify { subject.should redirect_to [category, section] }
  end

  describe "#show" do
    subject { get :show, category_id: category.id, section_id: section.id, id: listing.id}
    it "should find the target listing" do
      subject
      assigns(:listing).name.should == listing.name
      assigns(:listing).content.should == listing.content
    end
  end

  describe "#new" do
    subject { get :new, category_id: category.id, section_id: section.id }
    context "not logged in" do
      it_should_behave_like "Unauthorized action"
    end
    context "Logged in as a user" do
      before(:each) { sign_in FactoryGirl.create(:user) }
      it { should be_successful }
      it { should render_template :new }
    end
  end

end
