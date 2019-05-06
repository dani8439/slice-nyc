class CreatePieCheeses < ActiveRecord::Migration[5.2]
  def change
    create_table :pie_cheeses do |t|
      t.integer :pie_id
      t.integer :cheese_id

      t.timestamps
    end
  end
end
