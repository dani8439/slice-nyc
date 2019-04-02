class CreateRatings < ActiveRecord::Migration[5.2]
  def change
    create_table :ratings do |t|
      t.integer :taste_score
      t.integer :restaurant_id
      t.string :atmosphere
      t.string :notes

      t.timestamps
    end
  end
end
