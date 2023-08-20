class Product < ApplicationRecord
  has_one_attached :product_image

  has_many :cart_products
  has_many :order_details
  belongs_to :category

  def taxin_price
    price*1.1
  end

end
