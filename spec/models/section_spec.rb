require 'spec_helper'

describe Section do
  it { should belong_to(:category) }
  it { should have_many(:listings) }
  it { should allow_mass_assignment_of(:name) }
end
