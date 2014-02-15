class Drug < ActiveRecord::Base
  belongs_to :condition
  has_one :schedule
end