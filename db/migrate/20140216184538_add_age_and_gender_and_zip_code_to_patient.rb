class AddAgeAndGenderAndZipCodeToPatient < ActiveRecord::Migration
  def change
    add_column :patients, :age, :integer
    add_column :patients, :gender, :string
    add_column :patients, :zip_code, :string
  end
end
