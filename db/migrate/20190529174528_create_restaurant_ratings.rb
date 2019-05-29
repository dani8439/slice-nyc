class CreateRestaurantRatings < ActiveRecord::Migration[5.2]
  def change
    create_table :restaurant_ratings do |t|
      t.integer :user_id
      t.integer :restaurant_id
      t.integer :rating
      t.string :comments

      t.timestamps
    end
  end
end
