class AddPriceToBurgers < ActiveRecord::Migration
  def change
    add_column :burgers, :price, :decimal, default: 6.5
  end
end
