class AddImgToRecipes < ActiveRecord::Migration
  def change
    add_column :recipes, :img, :text
  end
end
