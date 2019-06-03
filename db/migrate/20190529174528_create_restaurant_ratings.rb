class CreateRestaurantRatings < ActiveRecord::Migration[5.2]
  def change
    create_table :restaurant_ratings do |t|
      t.integer :user_id
      t.integer :restaurant_id
      t.integer :atmosphere_score
      t.integer :service_score
      t.integer :food_score
      t.string :comments

      t.timestamps
    end
  end
end
