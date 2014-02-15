class CreatePatient < ActiveRecord::Migration
  def change
    create_table :patients do |t|
      t.string :name
      t.string :phone
    end
  end
end
