class AddUniqueIndexToWateringCansUserId < ActiveRecord::Migration[8.0]
  def change
    add_index :watering_cans, :user_id, unique: true
  end
end
