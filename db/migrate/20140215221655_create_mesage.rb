class CreateMesage < ActiveRecord::Migration
  def change
    create_table :mesages do |t|
      t.text :message
      t.integer :send_type
      t.integer :user_id
      t.integer :patient_id
    end
  end
end
