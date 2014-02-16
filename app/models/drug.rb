class Drug < ActiveRecord::Base
  attr_accessible :name

  belongs_to :condition
  has_one :schedule
end