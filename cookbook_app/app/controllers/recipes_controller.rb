class RecipesController < ApplicationController

  def index
    @recipes = Recipe.all
  end

  def new
    @recipe = Recipe.new
  end

  def create
    Recipe.create(recipe_params)
    redirect_to(recipe_path)
  end

  def show
    @recipe = Receipe.find(params[:id])
  end

  def edit
    @recipe = Receipe.find(params[:id])
  end

  def update
    recipe = Receipe.find(params[:id])
    recipe.update(recipe_params)
    redirect_to(recipes_path)
  end

  def destroy
    recipe = Receipe.find(params[:id])
    recipe.destroy
    redirect_to(recipes_path)
  end

  private
  def recipe_params
    params.require(:recipe).permit(:title, :description, :instructions)
  end

end