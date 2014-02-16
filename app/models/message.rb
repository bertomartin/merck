class Message < ActiveRecord::Base
  attr_accessible :user_id, :message, :send_type, :patient_id
  belongs_to :user
end