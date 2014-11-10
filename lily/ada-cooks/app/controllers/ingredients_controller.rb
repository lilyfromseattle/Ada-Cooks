class IngredientsController < ApplicationController
  def index
    @ingredients = Ingredient.all
  end

  def new
    @ingredient = Ingredient.new
  end

  def edit
    @ingredient = Ingredient.find(params[:id])
  end

  def show
    @ingredients = Ingredient.all
  end

  def update
    @ingredient = IngredientForm.new(params[:ingredient_form])
      if @ingredient.update
        redirect_to ingredients_path
      else
        render :edit
      end
  end

  def create
    @ingredient = IngredientForm.new(params[:ingredient_form])
    # raise params.inspect
    if @ingredient.save
      # redirect_to show_ingredient_path(@ingredient_form.ingredient.id)
      redirect_to ingredients_path
    else
      redirect_to new_ingredient_path
    end
  end

  def destroy
    @ingredient = Ingredient.all.find(params[:id])
    @ingredient.destroy
    redirect_to "/ingredients"
  end

end
