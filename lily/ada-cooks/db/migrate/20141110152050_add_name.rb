class AddName < ActiveRecord::Migration
  def change
    add_column :recipe_ingredients, :name, :string
  end
end
