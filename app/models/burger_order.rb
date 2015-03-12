class BurgerOrder < ActiveRecord::Base
  belongs_to :burger
  belongs_to :order
end
