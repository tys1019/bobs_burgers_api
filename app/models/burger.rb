class Burger < ActiveRecord::Base
  validates :name, presence: true
  has_many :burger_ingredients
  has_many :ingredients, through: :burger_ingredients
  has_many :orders, through: :burger_orders
end
