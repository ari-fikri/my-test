class ShoppingCart < ActiveRecord::Base
    has_many :shopping_cart_details
    accepts_nested_attributes_for :shopping_cart_details
end
