class CreatePlantCounts < ActiveRecord::Migration[8.0]
  def change
    create_table :plant_counts do |t|
      t.integer :plant_id
      t.integer :user_id
      t.integer :count_finished
      t.integer :count_growing

      t.timestamps
    end
  end
end
