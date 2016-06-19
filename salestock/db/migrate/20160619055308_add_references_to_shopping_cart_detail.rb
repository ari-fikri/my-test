class AddReferencesToShoppingCartDetail < ActiveRecord::Migration
  def change
    add_reference :shopping_cart_details, :shopping_cart, index: true, null: false
    add_reference :shopping_cart_details, :product, index: true, null: false
  end
end
