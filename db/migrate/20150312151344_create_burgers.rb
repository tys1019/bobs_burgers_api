class CreateBurgers < ActiveRecord::Migration
  def change
    create_table :burgers do |t|
      t.string :name
    end
  end
end
