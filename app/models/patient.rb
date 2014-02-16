class Patient < ActiveRecord::Base
  attr_accessible :phone, :name, :your_relationship, :age, :gender, :zip_code
  validates_presence_of :name, :phone
  belongs_to :user



  has_many :patient_conditions
  has_many :conditions, :through => :patient_conditions
  accepts_nested_attributes_for :patient_conditions

end