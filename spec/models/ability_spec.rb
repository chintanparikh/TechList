require 'spec_helper'
require 'cancan/matchers'

describe Ability do
  let(:ability) { Ability.new(user) }
  let(:listing) { FactoryGirl.create(:listing) }
  subject { ability }

  context "User is nil" do
    let(:user) { nil }
    it { should_not be_able_to(:new, listing) }
  end

  context "User is user" do
    let(:user) { FactoryGirl.create(:user) }
    it { should be_able_to(:new, listing) }
    it { should be_able_to(:read, listing) }
  end

  context "User is admin" do
    let(:user) { FactoryGirl.create(:admin) }
    it { should be_able_to(:manage, :all) }
  end

end
