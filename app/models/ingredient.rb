class Ingredient < ActiveRecord::Base
  validates :name, presence: true
  has_many :burgers, through: :burger_ingredients
end
