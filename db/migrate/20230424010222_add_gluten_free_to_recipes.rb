class AddGlutenFreeToRecipes < ActiveRecord::Migration[7.0]
  def change
    add_column :recipes, :gluten_free, :boolean
    add_column :recipes, :vegetarian, :boolean
  end
end
