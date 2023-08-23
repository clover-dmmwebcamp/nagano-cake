class Product < ApplicationRecord
  has_one_attached :product_image

  has_many :cart_products
  has_many :order_details
  belongs_to :category

  validates :name, presence: true
  validates :introduction, presence: true
  validates :without_tax, presence: true, numericality: {only_integer: true, greater_than_or_equal_to: 0}
  validates :is_active, inclusion: { in: [true, false] }

  def add_tax_price
    (self.without_tax * 1.10).round
  end

end
