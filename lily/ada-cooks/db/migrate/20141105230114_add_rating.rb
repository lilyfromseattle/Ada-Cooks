class AddRating < ActiveRecord::Migration
  def change
    add_column :recipes, :rating, :integer
    add_column :recipes, :difficulty, :string
  end
end
