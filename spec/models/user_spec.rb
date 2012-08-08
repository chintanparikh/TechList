require 'spec_helper'

describe User do
  [:email, :password, :password_confirmation, :remember_me].each do |attribute|
    it { should allow_mass_assignment_of(attribute) }
  end

  let(:admin) { FactoryGirl.create(:admin) }
  let(:user) { FactoryGirl.create(:user) }

  describe ".admin?" do
    it "should return true for an admin" do
      admin.admin?.should be_true
    end

    it "should return false for a user" do
      user.admin?.should be_false
    end
  end

  describe ".user?" do
    it "should return false for an admin" do
      user.admin?.should be_false
    end
    it "should return true for a user" do
      user.user?.should be_true
    end
  end
end

