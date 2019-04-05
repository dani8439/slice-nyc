class CreatePieToppings < ActiveRecord::Migration[5.2]
  def change
    create_table :pie_toppings do |t|
      t.integer :pie_id
      t.integer :topping_id

      t.timestamps
    end
  end
end
