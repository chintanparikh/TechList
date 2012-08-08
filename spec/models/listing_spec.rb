require 'spec_helper'

describe Listing do
  it { should allow_mass_assignment_of(:content) }
  it { should allow_mass_assignment_of(:name) }
  it { should belong_to(:section)}
end
