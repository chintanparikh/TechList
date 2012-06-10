class Listing < ActiveRecord::Base
  belongs_to :section
  attr_accessible :content, :name
end
