require 'spec_helper'

describe Role do
  specify { Role.enumeration.should == [:admin, :user] }
  # Mass Assignment
  it { should allow_mass_assignment_of(:name) }
end
