class Order < ActiveRecord::Base
  has_many :burger_orders
  has_many :burgers, through: :burger_orders
end
