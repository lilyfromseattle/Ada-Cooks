IngredientsController < ApplicationController
  def index
    @ingredients = Ingredient.all
  end

  def new
    @ingredient = Ingredient.new
  end

  def edit
    @ingredient = Ingredient.find(params[:id])
  end

  def update
    @ingredient = Ingredient.find(params[:id])
      if @ingredient.update(params.require[:ingredient].permit(:name, :creator, :cooktime, :cooktemp, :difficulty, :directions, :type))
        redirect_to root_path
      else
        render :edit
      end
  end

  def create
    @ingredient = Ingredient.new(params.require(:ingredient).permit(:name, :creator, :cooktime, :cooktemp, :difficulty, :directions, :type))
    # raise params.inspect
    if @ingredient.save
      redirect_to "/ingredients"
    else
      redirect_to "/ingredients/new"
    end
  end

  def destroy
    @ingredient = Ingredient.all.find(params[:id])
    @ingredient.destroy
    redirect_to "/ingredients"
  end

end
