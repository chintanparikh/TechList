require 'spec_helper'

describe Category do
  it { should allow_mass_assignment_of(:name) }
  it { should have_many(:sections) }
end
