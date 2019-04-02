class CreateRestaurants < ActiveRecord::Migration[5.2]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :address
      t.string :type
      t.integer :menu_id
      t.integer :rating_id
      t.integer :user_id
      t.boolean :multiple_locations


      t.timestamps
    end
  end
end
