class Product < ActiveRecord::Base
    has_many :shopping_cart_details
    belongs_to :category

    validates :name, presence: true
end
