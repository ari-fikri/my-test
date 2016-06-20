class ShoppingCartDetail < ActiveRecord::Base
    belongs_to :product
    belongs_to :shopping_cart

    validates :qty, :product, presence: true
    accepts_nested_attributes_for :product
end
