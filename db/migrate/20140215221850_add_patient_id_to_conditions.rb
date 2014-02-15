class AddPatientIdToConditions < ActiveRecord::Migration
  def change
    add_column :conditions, :patient_id, :integer
  end
end
