class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.decimal :total_price
      t.string :stripe_token
      t.text :stripe_transaction
      t.belongs_to :users

      t.timestamps
    end
  end
end
