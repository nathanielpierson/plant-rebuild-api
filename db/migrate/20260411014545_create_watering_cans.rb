class CreateWateringCans < ActiveRecord::Migration[8.0]
  def change
    create_table :watering_cans do |t|
      t.integer :charges
      t.integer :user_id
      t.datetime :last_filled

      t.timestamps
    end
  end
end
