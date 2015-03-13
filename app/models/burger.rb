class Burger < ActiveRecord::Base
  validates :name, presence: true
  has_many :burger_ingredients, dependent: :destroy
  has_many :ingredients, through: :burger_ingredients
  has_many :orders, through: :burger_orders
  after_initialize :defaults

  def add_ingredients(params)

    params['burger']["ingredients"].map { |item|
      self.ingredients << Ingredient.where(name: item)
      }
  end

  def defaults
    self.price = 6.50
  end
  
end
