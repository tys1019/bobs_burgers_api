class AddPriceToBurgers < ActiveRecord::Migration
  def change
    add_column :burgers, :price, :string, default: '6.50'
  end
end
