class CreateCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :categories do |t|
      t.string :name
      t.string :crust
      t.string :cheese
      t.string :shape
      t.string :pan
      t.string :additional_comments

      t.timestamps
    end
  end
end
