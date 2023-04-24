class RecipesController < ApplicationController
  def index
    @recipes = Recipe.all
  end

  def show
    @recipe = Recipe.find(params[:id])
  end

  def new
    @recipe = Recipe.new
  end

  def create
    @recipe = Recipe.new(recipe_params)

    if @recipe.save
      redirect_to @recipe
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @recipe = Recipe.find(params[:id])
  end

  def update
    @recipe = Recipe.find(params[:id])

    if @recipe.update(recipe_params)
      redirect_to @recipe
    else
      render :edit, status: :unprocessable_entity
    end
  end

  private
    def recipe_params
      params.require(:recipe).permit(:title, :ingredients, :instructions, :prep_time, :cook_time, :equipment, :easy, :gluten_free, :vegetarian)
    end
end
