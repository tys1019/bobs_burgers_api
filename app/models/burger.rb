class Burger < ActiveRecord::Base
  has_many :burger_ingredients, dependent: :destroy
  has_many :ingredients, through: :burger_ingredients
  has_many :orders, through: :burger_orders

  def add_ingredients(params)
    params['burger']["ingredients"].map do |item|
      self.ingredients << Ingredient.where(name: item)
    end
    self.ingredients.each do |ingredient|
      self.price += ingredient.price if ingredient.price
    end

  end

end
