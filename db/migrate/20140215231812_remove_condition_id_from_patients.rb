class RemoveConditionIdFromPatients < ActiveRecord::Migration
  def change
    remove_column :patients, :condition_id, :integer
  end
end
