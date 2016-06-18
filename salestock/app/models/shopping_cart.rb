class ShoppingCart < ActiveRecord::Base
    belongs_to :products

    validates :product_id, presence: true
end
