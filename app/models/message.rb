class Message < ActiveRecord::Base
  attr_accessible :user_id, :message, :send_type, :patient_id
  validates_presence_of :message
  belongs_to :user


end