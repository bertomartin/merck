class Patient < ActiveRecord::Base
  attr_accessible :phone, :name
  belongs_to :user

  has_many :patient_conditions
  has_many :conditions, :through => :patient_conditions
end