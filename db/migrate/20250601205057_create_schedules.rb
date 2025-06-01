class CreateSchedules < ActiveRecord::Migration[8.0]
  def change
    create_table :schedules do |t|
      t.integer :plant_id
      t.integer :user_id
      t.datetime :last_watered_date
      t.integer :time_changed
      t.integer :growth_status
      t.boolean :status

      t.timestamps
    end
  end
end
