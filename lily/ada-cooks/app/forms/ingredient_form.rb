class IngredientForm

    def initialize(attributes)
        @attributes = attributes
    end

    def ingredient
        @ingredient
    end

    def save
      @ingredient = Ingredient.create(name: @attributes[:name],
                                      calories: @attributes[:calories])
      # @attributes[:ingredients].each do |i|
      #   ingredientIngredient.create(ingredient_id: id, ingredient_id: ingredient.id)
      # end
        @ingredient.valid?
    end

    def update
      @ingredient = Ingredient.update(name: @attributes[:name],
                              calories: @attributes[:calories])
      # @attributes[:ingredients].each do |i|
      #   ingredientIngredient.create(ingredient_id: id, ingredient_id: ingredient.id)
      # end
        @ingredient.valid?
    end

end
