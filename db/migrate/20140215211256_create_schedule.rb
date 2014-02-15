class CreateSchedule < ActiveRecord::Migration
  def change
    create_table :schedules do |t|
      t.integer :drug_id
      t.datetime :time_to_send
    end
  end
end
