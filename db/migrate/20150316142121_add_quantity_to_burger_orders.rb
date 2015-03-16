class AddQuantityToBurgerOrders < ActiveRecord::Migration
  def change
    add_column :burger_orders, :quantity, :integer, default: 1
  end
end
