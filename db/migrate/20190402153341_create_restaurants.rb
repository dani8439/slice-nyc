class CreateRestaurants < ActiveRecord::Migration[5.2]
  def change
    create_table :restaurants do |t|
      t.string :name
      # t.string :neighborhood
      # t.string :borough
      # t.string :seating
      # t.string :oven
      # t.boolean :multiple_locations, :default => false

      t.timestamps
    end
  end
end
