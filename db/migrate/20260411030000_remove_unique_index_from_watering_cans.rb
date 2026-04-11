class RemoveUniqueIndexFromWateringCans < ActiveRecord::Migration[8.0]
  def change
    remove_index :watering_cans, :user_id, unique: true, if_exists: true
  end
end
