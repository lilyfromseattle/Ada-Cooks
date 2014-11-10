class RecipeIngredientsController < ApplicationController
  def index
    @recipe_ingredients = RecipeIngredient.all
  end

  def new
    @recipe_ingredient = RecipeIngredient.new
  end

  def edit
    @recipe_ingredient = RecipeIngredient.find(params[:id])
  end

  # def update
  #   @recipe_ingredient = RecipeIngredient.find(params[:id])
  #     if @recipe_ingredient.update(params.require[:recipe_ingredient].permit(:name, :creator, :cooktime, :cooktemp, :difficulty, :directions, :type))
  #
  #     else
  #       render :edit
  #     end
  # end

  def create
    @recipe_ingredient = RecipeIngredient.new(params.require(:recipe_ingredient).permit(:name, :amount, :calories))
    # raise params.inspect
    # if @recipe_ingredient.save
    #   redirect_to "/recipe_ingredients"
    # else
    #   redirect_to "/recipe_ingredients/new"
    # end
  end

  def destroy
    @recipe_ingredient = RecipeIngredient.all.find(params[:id])
    @recipe_ingredient.destroy
    # redirect_to "/recipe_ingredients"
  end

end
