class Condition < ActiveRecord::Base
  attr_accessible :name
  has_many :drugs

  has_many :patient_conditions
  has_many :patients, :through => :patient_conditions
end