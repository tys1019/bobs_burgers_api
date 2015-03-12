class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.decimal :total_price
      t.belongs_to :users

      t.timestamps
    end
  end
end
