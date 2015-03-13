class AddPriceToBurgers < ActiveRecord::Migration
  def change
    add_column :burgers, :price, :decimal
  end
end
