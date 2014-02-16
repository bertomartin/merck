class AddRelationshipToPatients < ActiveRecord::Migration
  def change
    add_column :patients, :your_relationship, :string
  end
end
