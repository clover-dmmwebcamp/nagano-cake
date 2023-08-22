class CartProduct < ApplicationRecord
  belongs_to :customer
  belongs_to :product
  
  validates :quantity, presence: true
  
  def subtotal
    product.add_tax_price*quantity
  end
end
