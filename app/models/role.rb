class Role < ActiveRecord::Base
  class_attribute :enumeration
  self.enumeration = [:admin, :user].freeze
end
