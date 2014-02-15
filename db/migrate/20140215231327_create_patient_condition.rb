class CreatePatientCondition < ActiveRecord::Migration
  def change
    create_table :patient_conditions do |t|
      t.references :patient, index: true
      t.references :condition, index: true
    end
  end
end
