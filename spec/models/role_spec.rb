require 'spec_helper'

describe Role do
  specify { Role.enumeration.should == [:admin, :user] }
end
