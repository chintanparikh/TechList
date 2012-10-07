class Category < ActiveRecord::Base
  attr_accessible :name
  has_many :sections

  def to_s
    "#{name}"
  end
end
