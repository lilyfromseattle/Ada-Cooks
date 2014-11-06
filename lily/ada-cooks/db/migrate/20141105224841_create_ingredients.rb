class CreateIngredients < ActiveRecord::Migration
  def change
    create_table :ingredients do |t|
      t.string :name
      t.string :type
      t.integer :calories

      t.timestamps
    end
  end
end
