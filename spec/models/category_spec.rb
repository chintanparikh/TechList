require 'spec_helper'

describe Category do
  it { should allow_mass_assignment_of(:name) }
  it { should have_many(:sections) }

  describe ".to_s" do
    it "should return the name" do
      category = FactoryGirl.create(:category)
      category.to_s.should == category.name
    end
  end
end
