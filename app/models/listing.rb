class Listing < ActiveRecord::Base
  belongs_to :section
  belongs_to :user
  attr_accessible :content, :name
end
