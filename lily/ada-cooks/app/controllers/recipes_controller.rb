RecipesController < ApplicationController
  def index
    @recipes = Recipe.all
  end

  def new
    @recipe = Recipe.new
  end

  def edit
    @recipe = Recipe.find(params[:id])
  end

  def update
    @recipe = Recipe.find(params[:id])
      if @recipe.update(params.require[:recipe].permit(:name, :creator, :cooktime, :cooktemp, :difficulty, :directions, :type))
        redirect_to root_path
      else
        render :edit
      end
  end

  def create
    @recipe = Recipe.new(params.require(:recipe).permit(:name, :creator, :cooktime, :cooktemp, :difficulty, :directions, :type))
    # raise params.inspect
    if @recipe.save
      redirect_to "/recipes"
    else
      redirect_to "/recipes/new"
    end
  end

  def destroy
    @recipe = recipe.all.find(params[:id])
    @recipe.destroy
    redirect_to "/recipes"
  end

end
