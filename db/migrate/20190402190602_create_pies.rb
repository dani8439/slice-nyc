class CreatePies < ActiveRecord::Migration[5.2]
  def change
    create_table :pies do |t|
      t.string :name
      t.integer :category_id
      t.integer :cheese_id
      t.integer :crust_id
      t.integer :sauce_id
      t.integer :topping_id

      t.timestamps
    end
  end
end
