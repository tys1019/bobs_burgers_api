class Burger < ActiveRecord::Base
  validates :name, presence: true
  has_many :burger_ingredients
  has_many :ingredients, through: :burger_ingredients
  has_many :orders, through: :burger_orders

  def add_ingredients(params)
    self.ingredients << params['burger']["ingredients"].map { |item|
      self.ingredients << Ingredient.find(item['id'])
      }
  end
end
