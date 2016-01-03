class AddCategoryIdToRecipes < ActiveRecord::Migration
  def change
    add_column :recipes, :category_id, :integer
    drop_join_table :Categories, :Recipes, table_name: Categories_Recipes
  end
end
