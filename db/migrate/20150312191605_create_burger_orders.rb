class CreateBurgerOrders < ActiveRecord::Migration
  def change
    create_table :burger_orders do |t|
      t.belongs_to :burger, index: true
      t.belongs_to :order, index: true
    end
    add_foreign_key :burger_orders, :burgers
    add_foreign_key :burger_orders, :orders
  end
end
