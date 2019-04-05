class CreatePies < ActiveRecord::Migration[5.2]
  def change
    create_table :pies do |t|
      t.string :name
      t.string :crust
      t.string :cheese

      t.timestamps
    end
  end
end
