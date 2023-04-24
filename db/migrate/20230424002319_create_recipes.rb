class CreateRecipes < ActiveRecord::Migration[7.0]
  def change
    create_table :recipes do |t|
      t.string :title
      t.string :ingredients
      t.string :instructions
      t.integer :prep_time
      t.integer :cook_time
      t.string :equipment
      t.boolean :easy

      t.timestamps
    end
  end
end
