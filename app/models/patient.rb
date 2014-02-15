class Patient < ActiveRecord::Base
  belongs_to :user

  has_many :patient_conditions
  has_many :conditions, :through => :patient_conditions
end