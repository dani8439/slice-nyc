class CreateRatings < ActiveRecord::Migration[5.2]
  def change
    create_table :ratings do |t|
      t.integer :taste_score
      t.integer :service_score
      t.integer :price 
      t.string :comments
      t.integer :restaurant_id

      t.timestamps
    end
  end
end
