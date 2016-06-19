class CreateShoppingCartDetails < ActiveRecord::Migration
  def change
    create_table :shopping_cart_details do |t|
      t.integer :qty
      t.timestamps null: false
    end
  end
end
