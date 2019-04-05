class CreatePieRatings < ActiveRecord::Migration[5.2]
  def change
    create_table :pie_ratings do |t|
      t.integer :taste_score
      t.string :comments

      t.timestamps
    end
  end
end
