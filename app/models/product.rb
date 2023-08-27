class Product < ApplicationRecord
  has_one_attached :product_image

  has_many :cart_products
  has_many :order_details
  belongs_to :category

  # validates :product_image, presence: true
  validates :name, presence: true
  validates :introduction, presence: true
  validates :without_tax, presence: true, numericality: {only_integer: true, greater_than_or_equal_to: 0}
  validates :is_active, inclusion: { in: [true, false] }
  
  def get_product_image(width, height)
    unless product_image.attached?
      file_path = Rails.root.join('app/assets/images/noimage.png')
      product_image.attach(io: File.open(file_path), filename: 'noimage.png', content_type: 'image/png')
    end
    product_image.variant(resize_to_limit: [width, height]).processed
  end

  def self.partial_search(content)
    where("name LIKE?", '%'+content+'%')
  end

  def add_tax_price
    (self.without_tax * 1.10).round
  end

end
