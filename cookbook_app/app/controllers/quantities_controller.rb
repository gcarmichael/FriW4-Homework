class QuantitiesController < ApplicationController

  def index
    @quantities = Quantity.all
  end

  def new
    @quantities = Quantity.new
    @recipes = Recipe.all
    @ingredients = Ingredient.all
  end

  def create
    Quantity.create(quantity_params)
    redirect_to(quantities_path)
  end

  def show
    @quantity = Quantity.find(params[:id])
  end

  def edit
    @quantity = Quantity.find(params[:id])
    @recipes = Recipe.all
    @ingredients = Ingredient.all
  end

  def update
    quantity = Quantity.find(params[:id])
    quantity.update(quantity_params)
    redirect_to(quantities_path)
  end

  def destroy
    quantity = Quantity.find(params[:id])
    quantity.destroy
    redirect_to(quantities_path)
  end

  private
  def quantity_params
    params.require(:quantity).permit(:amount, :recipe_id, :ingredient_id)
  end

end