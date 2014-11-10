class RecipesController < ApplicationController

  def index
    @recipes = Recipe.all
  end

  def new
    @recipe = Recipe.new
    @ingredients = Ingredient.all
  end

  def show
    @recipe = Recipe.find(params[:id])
    @ingredients = RecipeIngredient.where("recipe_id = ?", params[:id])
  end

  def edit
    @recipe = Recipe.find(params[:id])
    @recipe_ingredients = RecipeIngredient.all
    # @ingredients = RecipeIngredient.where("recipe_id = ?", params[:id])
  end

  def update
    @recipe = RecipeForm.find(params[:id])
      if @recipe.update(params.require(:recipe).permit(:name, :cooktemp, :cooktime, :preptime, :directions, :creator))
        redirect_to recipes_path
      else
        render :edit
      end
  end

  def create
    @recipe = RecipeForm.new(params[:recipe_form])
    # raise params.inspect
    if @recipe.save
      # redirect_to show_recipe_path(@recipe_form.recipe.id)
      redirect_to recipes_path
    else
      redirect_to new_recipe_path
    end
  end

  def destroy
    @recipe = Recipe.all.find(params[:id])
    @recipe.destroy
    redirect_to recipes_path
  end

    def create_recipe_ingredient
     @recipe = Recipe.find(params[:id])
     @recipe_ingredient = RecipeIngredient.new
     @recipe_ingredient.ingredient_id = params[:ingredient_id]
     @recipe_ingredient.recipe_id = @recipe.id
     @recipe_ingredient.save
     redirect_to edit_recipe_path(@recipe, :anchor => "ingredient")
  end

  def destroy_recipe_ingredient
    @recipe = Recipe.find(params[:id])
    RecipeIngredient.find_by(recipe_id: params[:id], ingredient_id: params[:ingredient_id]).destroy
    redirect_to edit_recipe_path(@recipe, :anchor => "ingredient")
  end

end
