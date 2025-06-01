class AddClassesToPlants < ActiveRecord::Migration[8.0]
  def change
    add_column :plants, :name, :string
    add_column :plants, :description, :text
    add_column :plants, :amount_of_sun, :integer
    add_column :plants, :days_to_water, :integer
    add_column :plants, :image_url, :string
    add_column :plants, :growth_req, :integer
  end
end
