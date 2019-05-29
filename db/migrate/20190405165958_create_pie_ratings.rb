class CreatePieRatings < ActiveRecord::Migration[5.2]
  def change
    create_table :pie_ratings do |t|
      t.integer :taste_score
      t.string :comments
      t.integer :pie_id
      # t.integer :user_id
      t.integer :restaurant_rating_id

      t.timestamps
    end
  end
end
