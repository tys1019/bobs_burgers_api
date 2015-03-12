class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :burgers, array: true, default: []
      t.decimal :total_price

      t.timestamps
    end
  end
end
