class CreateDrug < ActiveRecord::Migration
  def change
    create_table :drugs do |t|
      t.string :name
      t.integer :condition_id
    end
  end
end
