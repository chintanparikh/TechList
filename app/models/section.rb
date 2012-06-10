class Section < ActiveRecord::Base
  belongs_to :category
  has_many :listings
  attr_accessible :name
end
