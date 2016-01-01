class CreateIngredients < ActiveRecord::Migration
  def change
    create_table :ingredients do |t|
      t.text :title
      t.text :kind

      t.timestamps null: false
    end
  end
end
