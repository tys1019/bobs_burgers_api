class AddQuantityToBurgerOrders < ActiveRecord::Migration
  def change
    add_column :burger_orders, :quantity, :integer
  end
end
