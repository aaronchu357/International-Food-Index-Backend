class RecipesController < ApplicationController
  before_action :set_recipe, only: [:show, :update, :destroy]

  def index
    recipes = Recipe.all
    render json: RecipeSerializer.new(recipes)
  end

  def show
    render json: RecipeSerializer.new(recipe)
  end

  # POST /recipes
  def create
    recipe = Recipe.new(recipe_params)

    if recipe.save
      render json: RecipeSerializer.new(recipe), status: :created, location: recipe
    else
      render json: recipe.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /recipes/1
  def update
    if recipe.update(recipe_params)
      render json: RecipeSerializer.new(recipe)
    else
      render json: recipe.errors, status: :unprocessable_entity
    end
  end

  # DELETE /recipes/1
  def destroy
    recipe.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_recipe
      recipe = Recipe.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def recipe_params
      params.require(:recipe).permit(:link)
    end

end
