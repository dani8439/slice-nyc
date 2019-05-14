class CreatePieRestaurants < ActiveRecord::Migration[5.2]
  def change
    create_table :pie_restaurants do |t|
      t.integer :pie_id
      t.integer :restaurant_id

      t.timestamps
    end
  end
end
