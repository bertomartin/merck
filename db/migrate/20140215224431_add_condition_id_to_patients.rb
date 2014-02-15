class AddConditionIdToPatients < ActiveRecord::Migration
  def change
    add_column :patients, :condition_id, :integer
  end
end
