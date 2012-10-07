require 'spec_helper'

describe Listing do
  it { should allow_mass_assignment_of(:content) }
  it { should allow_mass_assignment_of(:name) }
  it { should belong_to(:section) }
  it { should belong_to(:user) }

  describe ".to_s" do
    it "should return the name" do
      listing = FactoryGirl.create(:listing)
      listing.to_s.should == listing.name
    end
  end
end
