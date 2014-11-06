class AddServingSize < ActiveRecord::Migration
  def change
    add_column :recipes, :directions, :text
    add_column :recipes, :serving, :integer
  end
end
