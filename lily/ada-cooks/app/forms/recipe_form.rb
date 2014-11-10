class RecipeForm

    def initialize(attributes)
        @attributes = attributes
    end

    def recipe
        @recipe
    end

    def save
      @recipe = Recipe.create(name: @attributes[:name],
                              directions: @attributes[:directions],
                              cooktime: @attributes[:cooktime],
                              preptime: @attributes[:preptime],
                              cooktemp: @attributes[:cooktemp],
                              creator: @attributes[:creator])
      @attributes[:ingredients].each do |i|
        @ingredient_name = Ingredient.all.find(i).name
        RecipeIngredient.create(ingredient_id: i, recipe_id: recipe.id, name: @ingredient_name )
      end
        @recipe.valid?
    end

    # def update
    #   @recipe = Recipe.find(params[:id])
    #   @recipe.update(name: @attributes[:name],
    #                           directions: @attributes[:directions],
    #                           preptime: @attributes[:preptime],
    #                           cooktime: @attributes[:cooktime],
    #                           preptime: @attributes[:preptime],
    #                           cooktemp: @attributes[:cooktemp])
    #   @attributes[:ingredients].each do |i|
    #     RecipeIngredient.create(ingredient_id: id, recipe_id: recipe.id)
    #   end
    #     @recipe.valid?
    # end

end
