class Schedule < ActiveRecord::Base
  # id, drug_id, time_to_send
  attr_accessible :drug_id, :time_to_send
  belongs_to :drug
end