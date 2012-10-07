class Listing < ActiveRecord::Base
  belongs_to :section
  belongs_to :user
  attr_accessible :content, :name

  def to_s
    "#{name}"
  end
end
