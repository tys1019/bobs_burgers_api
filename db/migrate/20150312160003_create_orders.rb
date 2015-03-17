class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.decimal :total_price
      t.string :stripe_token
      t.text :stripe_transaction
      t.belongs_to :user, index: true

      t.timestamps
    end
    add_foreign_key :orders, :users
  end
end
