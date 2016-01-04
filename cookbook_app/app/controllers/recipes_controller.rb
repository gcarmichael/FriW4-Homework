class RecipesController < ApplicationController

  def index
    @recipes = Recipe.all
  end

  def new
    @recipe = Recipe.new
    @categories = Category.all
  end

  def create
    Category.find(params[:recipe][:category_id]).recipes.create(recipe_params)
    redirect_to(category_path(params[:recipe][:category_id]))
  end

  def show
    @recipe = Recipe.find(params[:id])
    @quantities = Quantity.where(:recipe_id => params[:id])
  end

  def edit
    @recipe = Recipe.find(params[:id])
    @categories = Category.all
  end

  def update
    recipe = Recipe.find(params[:id])
    recipe.update(recipe_params)
    redirect_to(recipes_path)
  end

  def destroy
    recipe = Recipe.find(params[:id])
    recipe.destroy
    redirect_to(recipes_path)
  end

  private
  def recipe_params
    params.require(:recipe).permit(:title, :description, :instructions, :img, :category_id, :quantities)
  end

end