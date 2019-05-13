class CreateRestaurantPies < ActiveRecord::Migration[5.2]
  def change
    create_table :restaurant_pies do |t|
      t.integer :pie_id
      t.integer :restaurant_id

      t.timestamps
    end
  end
end
