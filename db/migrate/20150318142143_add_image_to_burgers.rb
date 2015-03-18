class AddImageToBurgers < ActiveRecord::Migration
  def change
    add_column :burgers, :image, :text
  end
end
