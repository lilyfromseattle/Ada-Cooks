class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.string :name
      t.string :creator
      t.integer :cooktime
      t.integer :cooktemp
      t.string :type
      t.integer :preptime

      t.timestamps
    end
  end
end
