class RemovePatientIdFromConditions < ActiveRecord::Migration
  def change
    remove_column :conditions, :patient_id, :integer
  end
end
