require 'spec_helper'

describe Section do
  it { should belong_to(:category) }
  it { should have_many(:listings) }
  it { should allow_mass_assignment_of(:name) }

  describe ".to_s" do
    it "should return the name" do
      section = FactoryGirl.create(:section)
      section.to_s.should == section.name
    end
  end
end
