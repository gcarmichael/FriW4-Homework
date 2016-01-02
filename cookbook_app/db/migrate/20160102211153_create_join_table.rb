class CreateJoinTable < ActiveRecord::Migration
  def change
    create_join_table :Recipes, :Categories do |t|
      # t.index [:recipe_id, :category_id]
      # t.index [:category_id, :recipe_id]
    end
  end
end
