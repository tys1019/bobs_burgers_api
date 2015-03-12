class CreateBurgerIngredients < ActiveRecord::Migration
  def change
    create_table :burger_ingredients do |t|
      t.belongs_to :burger, index: true
      t.belongs_to :ingredient, index: true
    end
    add_foreign_key :burger_ingredients, :burgers
    add_foreign_key :burger_ingredients, :ingredients
  end
end
