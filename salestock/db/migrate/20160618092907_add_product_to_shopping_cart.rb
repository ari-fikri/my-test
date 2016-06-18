class AddProductToShoppingCart < ActiveRecord::Migration
    def change
        add_reference :shopping_carts, :product, index: true
    end
end
