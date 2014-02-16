class PatientCondition < ActiveRecord::Base
  attr_accessible :patient_id, :condition_id

  belongs_to :patient
  belongs_to :condition

  accepts_nested_attributes_for :condition
end